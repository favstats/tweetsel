#' request_page
#'
#' This function gets the html of he current page
#'
#' @param driver a Selenium driver
#' @export
request_page <- function(driver){
  driver$getPageSource() %>%
    .[[1]] %>%
    xml2::read_html()
}

#' parse_tweet
#'
#' @param x individual tweet
parse_tweet <- function(x) {
  
  
  url <- rvest::html_node(x, xpath = 'div/div[2]/div[2]/div[1]/div[1]/a') %>% 
    str_extract_x("href") %>%
    paste0("https://twitter.com", .)
  
  handle <- NA
  status_id <- NA
  ## get screen name and tweet id
  slash_count <- stringr::str_count(url, "/")
  if (slash_count == 5) {
    raw_info <- url %>% stringr::str_split("/") %>% unlist()
    handle <- raw_info[4]
    status_id <- raw_info[6]
  }
  
  if (is.na(status_id)) {
    status_id <- Sys.time() %>% as.numeric() + runif(1, 0, 1000) %>% as.character()
  }
  
  # span/span
  screen_name <- rvest::html_node(x, xpath = 'div/div[2]/div[2]/div[1]/div[1]/div[1]/a/div/div[1]/div[1]') %>%
    rvest::html_text()
  
  type <- rvest::html_node(x, xpath = 'div/div[2]/div[2]/div[3]/div/div/div[2]') %>%
    as.character() %>% str_extract_x("role")
  
  is_quote_tweet <- F
  quoted_handle <- NA_character_
  quoted_text <- NA_character_
  if (!is.na(type)) {
    if (type == "blockquote") {
      
      is_quote_tweet <- T
      
      quote_tweet <- rvest::html_node(x, xpath = 'div/div[2]/div[2]/div[3]/div/div/div[2]')
      quoted_handle <- rvest::html_node(quote_tweet, xpath = 'div/div[1]/div[1]/div/div/div/div/div[2]') %>% rvest::html_text()
      quoted_text <- rvest::html_node(quote_tweet, xpath = 'div/div[2]/div[1]') %>% rvest::html_text()
      
    }
    
  }
  
  media <- rvest::html_node(x, xpath = 'div/div[2]/div[2]/div[3]/div/div') %>% str_extract_x("href")
  
  raw_stats1 <- rvest::html_node(x, xpath = 'div/div[2]/div[2]/div[3]') %>% str_extract_x("aria-label")
  raw_stats2 <- rvest::html_node(x, xpath = 'div/div[2]/div[2]/div[4]') %>% str_extract_x("aria-label")
  
  raw_stats_potential <- c(raw_stats1, raw_stats2)
  
  raw_stats <- raw_stats_potential[stringr::str_detect(raw_stats_potential, ".epl|.ike|.etweet")] %>% na.omit() %>% as.character()
  
  if (raw_stats == "Reply") {
    raw_stats <- NULL
  }
  
  tweet_stats <- tibble::tibble(reply_count = 0,
                        retweet_count = 0,
                        like_count = 0)
  
  if (!length(raw_stats)==0) {
    tweet_stats <-
      raw_stats %>%
      purrr::map_dfc(~{
        splitted <- stringr::str_split(raw_stats, ",") %>%
          unlist %>%
          purrr::keep(~stringr::str_detect(.x, "\\d+"))
        
        
        var_names <- dplyr::case_when(
          stringr::str_detect(splitted, ".epl") ~ "reply_count",
          stringr::str_detect(splitted, ".etw") ~ "retweet_count",
          stringr::str_detect(splitted, ".ik") ~ "like_count"
        )
        
        
        
        stats_dat <- tibble::tibble(var = splitted) %>%
          t() %>% tibble::as_tibble(.name_repair = ~purrr::set_names(var_names))
        
        if (all(!stringr::str_detect(splitted, ".epl"))) {
          stats_dat <- stats_dat %>% dplyr::bind_cols(tibble::tibble(reply_count = "0"))
        }
        if (all(!stringr::str_detect(splitted, ".etw"))) {
          stats_dat <- stats_dat %>% dplyr::bind_cols(tibble::tibble(retweet_count = "0"))
        }
        if (all(!stringr::str_detect(splitted, ".ik"))) {
          stats_dat <- stats_dat %>% dplyr::bind_cols(tibble::tibble(like_count = "0"))
        }
        
        return(stats_dat)
      }) %>%
      dplyr::mutate_all(parse_number)
  }
  
  
  
  
  
  profile_image_url <- rvest::html_node(x, xpath = "div/div[2]/div[1]/div/div/a/div[1]/div[2]/div/img") %>%
    rvest::html_attr("src")
  
  context <- rvest::html_node(x, xpath = "div/div[1]") %>% rvest::html_text()
  
  is_retweet <- F
  if (stringr::str_detect(context, "etweeted")) {
    is_retweet <- T
  }
  
  created_at <- rvest::html_node(x, "time") %>% str_extract_x("datetime")
  
  text <- rvest::html_node(x, xpath = "div/div[2]/div[2]/div[2]") %>% rvest::html_text()
  
  tibble::tibble(status_id,
         handle,
         screen_name,
         url,
         created_at,
         text,
         context,
         is_quote_tweet,
         is_retweet,
         quoted_handle,
         quoted_text,
         profile_image_url,
         media) %>%
    dplyr::mutate(context = ifelse(context == "", NA_character_, context)) %>%
    dplyr::bind_cols(tweet_stats)
  
}





#' parse_tweets
#'
#' Parse a Number of Tweets
#'
#' @export
parse_tweets <- function(html){
  html %>%
    rvest::html_nodes("body")  %>%
    rvest::html_node("section") %>%
    rvest::html_nodes("article") %>%
    purrr::map_dfr(parse_tweet)
}


#' Get Tweets
#'
#' Mid level function to get and parse tweets
#'
#' @export
get_tweets <- function(driver, n) {
  
  tweet_list <- 1:n %>%
    purrr::map_dfr(~{
      
      # print(.x)
      
      tweet_list <- driver %>%
        request_page() %>%
        parse_tweets()
      
      message(glue::glue("[{.x}] Scrolling..\n"))
      
      driver %>%
        arrow_down(10)
      
      return(tweet_list)
    })
  
  tweet_list_last <- driver %>%
    request_page() %>%
    parse_tweets()
  
  return(tweet_list %>% dplyr::bind_rows(tweet_list_last))
}


#' Get Tweets
#'
#' Top level function to get and parse tweets
#'
#' @param driver Selenium driver
#' @param screen_name Give screen_name of user you want to get tweets from
#' @param from Give start date as character in this format `YYYY-MM-DD`
#' @param until Give end date as character in this format `YYYY-MM-DD`
#' @param n_scroll number of scrolls (Note: if the number of tweets you want to collect is high you may want to increase this)
#' @export
get_spec_timeline <- function(driver, screen_name, from, until, end_date, path, n_scroll = 5) {
  
  # if (!dir.exists("data")) dir.create("data")
  
  search_url <- glue::glue("https://twitter.com/search?q=(from%3A{screen_name})%20until%3A{from}%20since%3A{until}&src=typed_query&f=live")
  
  driver$navigate(search_url)
  
  wait(5)
  
  
  enough <- F
  remove_duplicates <- F
  `%nin%` <- Negate(`%in%`)
  remove_ids <- NULL
  
  while (!enough) {
    
    if (remove_duplicates) {
      remove_ids <- tweets_dat$status_id %>% 
        c(tweets_dat$status_id) %>% 
        unique()
    }
    
    tweets_dat <- driver %>%
      get_tweets(n_scroll) %>%
      dplyr::distinct(status_id, .keep_all = T) %>% 
      dplyr::mutate(created_at = lubridate::as_datetime(created_at))
    
    
    
    if (file.exists(path)) {
      if (!is.null(remove_ids)) {
        tweets_dat <- tweets_dat %>% 
          filter(status_id %nin% remove_ids)        
      }
      readr::write_csv(tweets_dat, path = path, append = T) 
    } else if (!file.exists(path)){
      readr::write_csv(tweets_dat, path = path, append = F)
    }
    
    remove_duplicates <- T
    
    cat("\nData Saved!\n")
    
    enough <- lubridate::as_date(min(tweets_dat$created_at))==lubridate::ymd(until)
    
    message(glue::glue("\n\nCurrent earliest date: {lubridate::as_date(min(tweets_dat$created_at))}"))
    
  }
  
}



#' get_driver
#'
#' @param port specify port number
#' @param cache specify cache which will save cookies
#' @param ... pass aditional arguments to remoteDriver
#' @export
get_driver <- function(port, cache = NULL, ...){
  
  profile_args <-  c('--disable-dev-shm-usage',  
                     '--disable-gpu', 
                     '--start-maximized') 
  
  if (!is.null(cache)){
    profile_args <- c(profile_args,
                      glue::glue('--user-data-dir=tmp/cache/{cache}'))
  }  
  
  
  
  eCaps <- list(
    chromeOptions =
      list(
        prefs = list(
          "profile.default_content_settings.popups" = 0L
          # "download.prompt_for_download" = F
          # #"download.default_directory" = "~/extract_temp"
        ),
        args = profile_args# '--no-sandbox', '--headless') #  '--window-size=1200,1800' , ,
      )
  )
  
  driver <- RSelenium::remoteDriver(
    port = port,
    browserName = "chrome",
    extraCapabilities = eCaps,
    ...
  )
  
  driver$open()
  
  return(driver)
}