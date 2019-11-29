#' Extract Custom Atrribute from HTML
#' 
#' Extract a custom Attribute from HTML
#'
#' @param x HTML
#' @param attr specify the attribute
#' @export
str_extract_x <- function(x, attr){
  x <- x %>%
    as.character() %>%
    stringr::str_extract(glue::glue('{attr}=\".*?\"')) %>%
    stringr::str_replace_all(glue::glue('{attr}="|\"'), '')
  return(x)
}





#' arrow down
#'
#' @export
arrow_down <- function(driver, n = 5){
  
  body_element <- driver$findElement("css selector", "body")
  
  1:n %>%
    purrr::walk(~{
      body_element$sendKeysToElement(list(key = 'down_arrow',
                                          key = 'down_arrow',
                                          key = 'down_arrow',
                                          key = 'down_arrow',
                                          key = 'down_arrow'))
      wait(runif(1, 0.2, 0.8))
    })
  
  
  
  return(driver)
}

#' arrow down
#'
#' @export
arrow_up <- function(driver, n = 5){
  
  body_element <- driver$findElement("css selector", "body")
  
  1:n %>%
    purrr::walk(~{
      body_element$sendKeysToElement(list(key = 'up_arrow',
                                          key = 'up_arrow',
                                          key = 'up_arrow',
                                          key = 'up_arrow',
                                          key = 'up_arrow'))
      # wait(runif(1, 0.2, 0.5))
    })
  
  
  
  return(driver)
}

#' wait
#'
#' @export
wait <- function(sec = 1){
  Sys.sleep(sec)
}

#' just_wait
#'
#' @export
just_wait <- function(obj, sec = 1){
  wait(sec)
  invisible(obj)
}
