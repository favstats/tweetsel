
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tweetsel

<!-- badges: start -->

<!-- badges: end -->

This package provides a way to get tweets of a user from a certain
timerange using `Rselenium`.

Make sure that you are running a Twitter version that looks like this or
else it won’t work: ![](inst/logos/twitter.png)

## Installation

The development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("favstats/tweetsel")
```

## Example

Load in Package

``` r
library(tweetsel)
```

``` r
rD <- RSelenium::rsDriver(browser=c("chrome"), chromever="78.0.3904.105", port = port)

binman::list_versions("chromedriver")
```

Create a WebDriver with `RSelenium`

``` r
port <- sample(4000L:5000L, 1)
rD <- RSelenium::rsDriver(port = port)

driver <- rD$client
```

Get desired data in time range:

``` r

driver %>% 
  get_spec_timeline(screen_name = "realdonaldtrump", 
                  from = "2018-05-20",  #earliest date
                  until = "2018-05-01", #latest date
                  path = "data/tweets.csv") #specify how csv is named & saved
```

Output:

``` r
read.csv("data/tweets.csv")
#>        status_id          handle     screen_name
#> 1   9.979520e+17 realDonaldTrump Donald J. Trump
#> 2   9.979092e+17 realDonaldTrump Donald J. Trump
#> 3   9.978999e+17 realDonaldTrump Donald J. Trump
#> 4   9.976121e+17 realDonaldTrump Donald J. Trump
#> 5   9.975979e+17 realDonaldTrump Donald J. Trump
#> 6   9.975779e+17 realDonaldTrump Donald J. Trump
#> 7   9.975731e+17 realDonaldTrump Donald J. Trump
#> 8   9.975158e+17 realDonaldTrump Donald J. Trump
#> 9   9.974934e+17 realDonaldTrump Donald J. Trump
#> 10  9.974744e+17 realDonaldTrump Donald J. Trump
#> 11  9.974714e+17 realDonaldTrump Donald J. Trump
#> 12  9.974295e+17 realDonaldTrump Donald J. Trump
#> 13  9.974228e+17 realDonaldTrump Donald J. Trump
#> 14  9.972396e+17 realDonaldTrump Donald J. Trump
#> 15  9.972389e+17 realDonaldTrump Donald J. Trump
#> 16  9.972338e+17 realDonaldTrump Donald J. Trump
#> 17  9.972272e+17 realDonaldTrump Donald J. Trump
#> 18  9.972203e+17 realDonaldTrump Donald J. Trump
#> 19  9.971361e+17 realDonaldTrump Donald J. Trump
#> 20  9.971127e+17 realDonaldTrump Donald J. Trump
#> 21  9.970957e+17 realDonaldTrump Donald J. Trump
#> 22  9.970763e+17 realDonaldTrump Donald J. Trump
#> 23  9.968874e+17 realDonaldTrump Donald J. Trump
#> 24  9.968227e+17 realDonaldTrump Donald J. Trump
#> 25  9.968227e+17 realDonaldTrump Donald J. Trump
#> 26  9.968103e+17 realDonaldTrump Donald J. Trump
#> 27  9.968028e+17 realDonaldTrump Donald J. Trump
#> 28  9.967394e+17 realDonaldTrump Donald J. Trump
#> 29  9.967394e+17 realDonaldTrump Donald J. Trump
#> 30  9.967394e+17 realDonaldTrump Donald J. Trump
#> 31  9.967284e+17 realDonaldTrump Donald J. Trump
#> 32  9.967239e+17 realDonaldTrump Donald J. Trump
#> 33  9.964878e+17 realDonaldTrump Donald J. Trump
#> 34  9.964645e+17 realDonaldTrump Donald J. Trump
#> 35  9.964602e+17 realDonaldTrump Donald J. Trump
#> 36  9.964427e+17 realDonaldTrump Donald J. Trump
#> 37  9.963918e+17 realDonaldTrump Donald J. Trump
#> 38  9.963685e+17 realDonaldTrump Donald J. Trump
#> 39  9.963663e+17 realDonaldTrump Donald J. Trump
#> 40  9.961354e+17 realDonaldTrump Donald J. Trump
#> 41  9.961296e+17 realDonaldTrump Donald J. Trump
#> 42  9.961197e+17 realDonaldTrump Donald J. Trump
#> 43  9.960466e+17 realDonaldTrump Donald J. Trump
#> 44  9.960214e+17 realDonaldTrump Donald J. Trump
#> 45  9.959806e+17 realDonaldTrump Donald J. Trump
#> 46  9.958168e+17 realDonaldTrump Donald J. Trump
#> 47  9.957585e+17 realDonaldTrump Donald J. Trump
#> 48  9.957460e+17 realDonaldTrump Donald J. Trump
#> 49  9.956803e+17 realDonaldTrump Donald J. Trump
#> 50  9.956421e+17 realDonaldTrump Donald J. Trump
#> 51  9.954285e+17 realDonaldTrump Donald J. Trump
#> 52  9.954241e+17 realDonaldTrump Donald J. Trump
#> 53  9.954105e+17 realDonaldTrump Donald J. Trump
#> 54  9.950886e+17 realDonaldTrump Donald J. Trump
#> 55  9.950859e+17 realDonaldTrump Donald J. Trump
#> 56  9.950450e+17 realDonaldTrump Donald J. Trump
#> 57  9.950233e+17 realDonaldTrump Donald J. Trump
#> 58  9.947413e+17 realDonaldTrump Donald J. Trump
#> 59  9.945873e+17 realDonaldTrump Donald J. Trump
#> 60  9.945861e+17 realDonaldTrump Donald J. Trump
#> 61  9.945855e+17 realDonaldTrump Donald J. Trump
#> 62  9.945178e+17 realDonaldTrump Donald J. Trump
#> 63  9.944014e+17 realDonaldTrump Donald J. Trump
#> 64  9.943465e+17 realDonaldTrump Donald J. Trump
#> 65  9.943458e+17 realDonaldTrump Donald J. Trump
#> 66  9.941942e+17 realDonaldTrump Donald J. Trump
#> 67  9.941930e+17 realDonaldTrump Donald J. Trump
#> 68  9.941853e+17 realDonaldTrump Donald J. Trump
#> 69  9.941823e+17 realDonaldTrump Donald J. Trump
#> 70  9.941799e+17 realDonaldTrump Donald J. Trump
#> 71  9.941762e+17 realDonaldTrump Donald J. Trump
#> 72  9.939766e+17 realDonaldTrump Donald J. Trump
#> 73  9.939265e+17 realDonaldTrump Donald J. Trump
#> 74  9.938154e+17 realDonaldTrump Donald J. Trump
#> 75  9.938135e+17 realDonaldTrump Donald J. Trump
#> 76  9.938101e+17 realDonaldTrump Donald J. Trump
#> 77  9.935622e+17 realDonaldTrump Donald J. Trump
#> 78  9.935412e+17 realDonaldTrump Donald J. Trump
#> 79  9.934928e+17 realDonaldTrump Donald J. Trump
#> 80  9.934845e+17 realDonaldTrump Donald J. Trump
#> 81  9.934830e+17 realDonaldTrump Donald J. Trump
#> 82  9.934770e+17 realDonaldTrump Donald J. Trump
#> 83  9.934756e+17 realDonaldTrump Donald J. Trump
#> 84  9.934554e+17 realDonaldTrump Donald J. Trump
#> 85  9.934523e+17 realDonaldTrump Donald J. Trump
#> 86  9.934465e+17 realDonaldTrump Donald J. Trump
#> 87  9.934438e+17 realDonaldTrump Donald J. Trump
#> 88  9.928806e+17 realDonaldTrump Donald J. Trump
#> 89  9.925624e+17 realDonaldTrump Donald J. Trump
#> 90  9.925589e+17 realDonaldTrump Donald J. Trump
#> 91  9.925565e+17 realDonaldTrump Donald J. Trump
#> 92  9.925384e+17 realDonaldTrump Donald J. Trump
#> 93  9.925241e+17 realDonaldTrump Donald J. Trump
#> 94  9.925239e+17 realDonaldTrump Donald J. Trump
#> 95  9.925036e+17 realDonaldTrump Donald J. Trump
#> 96  9.923954e+17 realDonaldTrump Donald J. Trump
#> 97  9.923575e+17 realDonaldTrump Donald J. Trump
#> 98  9.923545e+17 realDonaldTrump Donald J. Trump
#> 99  9.923526e+17 realDonaldTrump Donald J. Trump
#> 100 9.923504e+17 realDonaldTrump Donald J. Trump
#> 101 9.923487e+17 realDonaldTrump Donald J. Trump
#> 102 9.921067e+17 realDonaldTrump Donald J. Trump
#> 103 9.920837e+17 realDonaldTrump Donald J. Trump
#> 104 9.920781e+17 realDonaldTrump Donald J. Trump
#> 105 9.919958e+17 realDonaldTrump Donald J. Trump
#> 106 9.919944e+17 realDonaldTrump Donald J. Trump
#> 107 9.919923e+17 realDonaldTrump Donald J. Trump
#> 108 9.918864e+17 realDonaldTrump Donald J. Trump
#> 109 9.918843e+17 realDonaldTrump Donald J. Trump
#> 110 9.918432e+17 realDonaldTrump Donald J. Trump
#> 111 9.918097e+17 realDonaldTrump Donald J. Trump
#> 112 9.917763e+17 realDonaldTrump Donald J. Trump
#> 113 9.917434e+17 realDonaldTrump Donald J. Trump
#> 114 9.916902e+17 realDonaldTrump Donald J. Trump
#> 115 9.916721e+17 realDonaldTrump Donald J. Trump
#> 116 9.916695e+17 realDonaldTrump Donald J. Trump
#> 117 9.916448e+17 realDonaldTrump Donald J. Trump
#> 118 9.914026e+17 realDonaldTrump Donald J. Trump
#> 119 9.913803e+17 realDonaldTrump Donald J. Trump
#> 120 9.913609e+17 realDonaldTrump Donald J. Trump
#> 121 9.913374e+17 realDonaldTrump Donald J. Trump
#> 122 9.912796e+17 realDonaldTrump Donald J. Trump
#> 123 9.912710e+17 realDonaldTrump Donald J. Trump
#> 124 9.912679e+17 realDonaldTrump Donald J. Trump
#>                                                               url
#> 1   https://twitter.com/realDonaldTrump/status/997951982467014656
#> 2   https://twitter.com/realDonaldTrump/status/997909163379449857
#> 3   https://twitter.com/realDonaldTrump/status/997899870903169024
#> 4   https://twitter.com/realDonaldTrump/status/997612079375945728
#> 5   https://twitter.com/realDonaldTrump/status/997597940444221440
#> 6   https://twitter.com/realDonaldTrump/status/997577906007298048
#> 7   https://twitter.com/realDonaldTrump/status/997573139663028224
#> 8   https://twitter.com/realDonaldTrump/status/997515759281680385
#> 9   https://twitter.com/realDonaldTrump/status/997493407097524224
#> 10  https://twitter.com/realDonaldTrump/status/997474432443707393
#> 11  https://twitter.com/realDonaldTrump/status/997471413266247681
#> 12  https://twitter.com/realDonaldTrump/status/997429518867591170
#> 13  https://twitter.com/realDonaldTrump/status/997422764909912065
#> 14  https://twitter.com/realDonaldTrump/status/997239623268085761
#> 15  https://twitter.com/realDonaldTrump/status/997238932311068674
#> 16  https://twitter.com/realDonaldTrump/status/997233764689498112
#> 17  https://twitter.com/realDonaldTrump/status/997227223638790144
#> 18  https://twitter.com/realDonaldTrump/status/997220260259487744
#> 19  https://twitter.com/realDonaldTrump/status/997136144465842177
#> 20  https://twitter.com/realDonaldTrump/status/997112687799697408
#> 21  https://twitter.com/realDonaldTrump/status/997095653875617792
#> 22  https://twitter.com/realDonaldTrump/status/997076300476055552
#> 23  https://twitter.com/realDonaldTrump/status/996887371210788864
#> 24  https://twitter.com/realDonaldTrump/status/996822740320575488
#> 25  https://twitter.com/realDonaldTrump/status/996822738101825538
#> 26  https://twitter.com/realDonaldTrump/status/996810253126787073
#> 27  https://twitter.com/realDonaldTrump/status/996802784090640385
#> 28  https://twitter.com/realDonaldTrump/status/996739376028835840
#> 29  https://twitter.com/realDonaldTrump/status/996739374619426816
#> 30  https://twitter.com/realDonaldTrump/status/996739372723638272
#> 31  https://twitter.com/realDonaldTrump/status/996728397362540545
#> 32  https://twitter.com/realDonaldTrump/status/996723907867676673
#> 33  https://twitter.com/realDonaldTrump/status/996487798759854082
#> 34  https://twitter.com/realDonaldTrump/status/996464466702274561
#> 35  https://twitter.com/realDonaldTrump/status/996460197005717504
#> 36  https://twitter.com/realDonaldTrump/status/996442654568341505
#> 37  https://twitter.com/realDonaldTrump/status/996391840860471296
#> 38  https://twitter.com/realDonaldTrump/status/996368474556583937
#> 39  https://twitter.com/realDonaldTrump/status/996366330436648960
#> 40  https://twitter.com/realDonaldTrump/status/996135379802755072
#> 41  https://twitter.com/realDonaldTrump/status/996129630913482755
#> 42  https://twitter.com/realDonaldTrump/status/996119678551552000
#> 43  https://twitter.com/realDonaldTrump/status/996046634864791557
#> 44  https://twitter.com/realDonaldTrump/status/996021417622851584
#> 45  https://twitter.com/realDonaldTrump/status/995980604016611329
#> 46  https://twitter.com/realDonaldTrump/status/995816799341088770
#> 47  https://twitter.com/realDonaldTrump/status/995758467645353985
#> 48  https://twitter.com/realDonaldTrump/status/995746011321597953
#> 49  https://twitter.com/realDonaldTrump/status/995680316458262533
#> 50  https://twitter.com/realDonaldTrump/status/995642096676671495
#> 51  https://twitter.com/realDonaldTrump/status/995428472674758656
#> 52  https://twitter.com/realDonaldTrump/status/995424104286179328
#> 53  https://twitter.com/realDonaldTrump/status/995410516129538048
#> 54  https://twitter.com/realDonaldTrump/status/995088584221839360
#> 55  https://twitter.com/realDonaldTrump/status/995085901079433219
#> 56  https://twitter.com/realDonaldTrump/status/995044981768425477
#> 57  https://twitter.com/realDonaldTrump/status/995023303906652160
#> 58  https://twitter.com/realDonaldTrump/status/994741305908649985
#> 59  https://twitter.com/realDonaldTrump/status/994587349718847489
#> 60  https://twitter.com/realDonaldTrump/status/994586105822564353
#> 61  https://twitter.com/realDonaldTrump/status/994585463380987904
#> 62  https://twitter.com/realDonaldTrump/status/994517833357946882
#> 63  https://twitter.com/realDonaldTrump/status/994401394441453569
#> 64  https://twitter.com/realDonaldTrump/status/994346538028675072
#> 65  https://twitter.com/realDonaldTrump/status/994345813064192012
#> 66  https://twitter.com/realDonaldTrump/status/994194233111273472
#> 67  https://twitter.com/realDonaldTrump/status/994192995737096192
#> 68  https://twitter.com/realDonaldTrump/status/994185337504137216
#> 69  https://twitter.com/realDonaldTrump/status/994182263960162304
#> 70  https://twitter.com/realDonaldTrump/status/994179864436596736
#> 71  https://twitter.com/realDonaldTrump/status/994176238846664706
#> 72  https://twitter.com/realDonaldTrump/status/993976643898281984
#> 73  https://twitter.com/realDonaldTrump/status/993926510003277825
#> 74  https://twitter.com/realDonaldTrump/status/993815373190492160
#> 75  https://twitter.com/realDonaldTrump/status/993813485745295360
#> 76  https://twitter.com/realDonaldTrump/status/993810085540491264
#> 77  https://twitter.com/realDonaldTrump/status/993562242124865536
#> 78  https://twitter.com/realDonaldTrump/status/993541175511527425
#> 79  https://twitter.com/realDonaldTrump/status/993492804985872385
#> 80  https://twitter.com/realDonaldTrump/status/993484478633922560
#> 81  https://twitter.com/realDonaldTrump/status/993483042177118208
#> 82  https://twitter.com/realDonaldTrump/status/993476979893723137
#> 83  https://twitter.com/realDonaldTrump/status/993475610377932801
#> 84  https://twitter.com/realDonaldTrump/status/993455375755173892
#> 85  https://twitter.com/realDonaldTrump/status/993452275648679938
#> 86  https://twitter.com/realDonaldTrump/status/993446539988217857
#> 87  https://twitter.com/realDonaldTrump/status/993443781281271808
#> 88  https://twitter.com/realDonaldTrump/status/992880573025865729
#> 89  https://twitter.com/realDonaldTrump/status/992562394051293186
#> 90  https://twitter.com/realDonaldTrump/status/992558888212946949
#> 91  https://twitter.com/realDonaldTrump/status/992556495182155776
#> 92  https://twitter.com/realDonaldTrump/status/992538416196804608
#> 93  https://twitter.com/realDonaldTrump/status/992524132884664321
#> 94  https://twitter.com/realDonaldTrump/status/992523949698412544
#> 95  https://twitter.com/realDonaldTrump/status/992503576852393985
#> 96  https://twitter.com/realDonaldTrump/status/992395376039727104
#> 97  https://twitter.com/realDonaldTrump/status/992357529362583552
#> 98  https://twitter.com/realDonaldTrump/status/992354530510721025
#> 99  https://twitter.com/realDonaldTrump/status/992352585863651329
#> 100 https://twitter.com/realDonaldTrump/status/992350362450518016
#> 101 https://twitter.com/realDonaldTrump/status/992348740529815552
#> 102 https://twitter.com/realDonaldTrump/status/992106689330663424
#> 103 https://twitter.com/realDonaldTrump/status/992083738531192833
#> 104 https://twitter.com/realDonaldTrump/status/992078098974703616
#> 105 https://twitter.com/realDonaldTrump/status/991995845120753664
#> 106 https://twitter.com/realDonaldTrump/status/991994433750142976
#> 107 https://twitter.com/realDonaldTrump/status/991992302267785216
#> 108 https://twitter.com/realDonaldTrump/status/991886413686861824
#> 109 https://twitter.com/realDonaldTrump/status/991884309400342529
#> 110 https://twitter.com/realDonaldTrump/status/991843153953964033
#> 111 https://twitter.com/realDonaldTrump/status/991809653980966913
#> 112 https://twitter.com/realDonaldTrump/status/991776286489169920
#> 113 https://twitter.com/realDonaldTrump/status/991743358312861696
#> 114 https://twitter.com/realDonaldTrump/status/991690248399794176
#> 115 https://twitter.com/realDonaldTrump/status/991672075491438594
#> 116 https://twitter.com/realDonaldTrump/status/991669454823141376
#> 117 https://twitter.com/realDonaldTrump/status/991644756995444736
#> 118 https://twitter.com/realDonaldTrump/status/991402619552845825
#> 119 https://twitter.com/realDonaldTrump/status/991380274452803586
#> 120 https://twitter.com/realDonaldTrump/status/991360908868931585
#> 121 https://twitter.com/realDonaldTrump/status/991337381654654976
#> 122 https://twitter.com/realDonaldTrump/status/991279620044591105
#> 123 https://twitter.com/realDonaldTrump/status/991271009570484224
#> 124 https://twitter.com/realDonaldTrump/status/991267863674675200
#>               created_at
#> 1   2018-05-19T21:27:48Z
#> 2   2018-05-19T18:37:39Z
#> 3   2018-05-19T18:00:43Z
#> 4   2018-05-18T22:57:09Z
#> 5   2018-05-18T22:00:58Z
#> 6   2018-05-18T20:41:21Z
#> 7   2018-05-18T20:22:25Z
#> 8   2018-05-18T16:34:24Z
#> 9   2018-05-18T15:05:35Z
#> 10  2018-05-18T13:50:11Z
#> 11  2018-05-18T13:38:11Z
#> 12  2018-05-18T10:51:43Z
#> 13  2018-05-18T10:24:53Z
#> 14  2018-05-17T22:17:08Z
#> 15  2018-05-17T22:14:23Z
#> 16  2018-05-17T21:53:51Z
#> 17  2018-05-17T21:27:52Z
#> 18  2018-05-17T21:00:12Z
#> 19  2018-05-17T15:25:57Z
#> 20  2018-05-17T13:52:44Z
#> 21  2018-05-17T12:45:03Z
#> 22  2018-05-17T11:28:09Z
#> 23  2018-05-16T22:57:25Z
#> 24  2018-05-16T18:40:36Z
#> 25  2018-05-16T18:40:35Z
#> 26  2018-05-16T17:50:58Z
#> 27  2018-05-16T17:21:18Z
#> 28  2018-05-16T13:09:20Z
#> 29  2018-05-16T13:09:20Z
#> 30  2018-05-16T13:09:19Z
#> 31  2018-05-16T12:25:42Z
#> 32  2018-05-16T12:07:52Z
#> 33  2018-05-15T20:29:39Z
#> 34  2018-05-15T18:56:56Z
#> 35  2018-05-15T18:39:58Z
#> 36  2018-05-15T17:30:16Z
#> 37  2018-05-15T14:08:21Z
#> 38  2018-05-15T12:35:30Z
#> 39  2018-05-15T12:26:59Z
#> 40  2018-05-14T21:09:16Z
#> 41  2018-05-14T20:46:25Z
#> 42  2018-05-14T20:06:53Z
#> 43  2018-05-14T15:16:38Z
#> 44  2018-05-14T13:36:25Z
#> 45  2018-05-14T10:54:15Z
#> 46  2018-05-14T00:03:21Z
#> 47  2018-05-13T20:11:33Z
#> 48  2018-05-13T19:22:03Z
#> 49  2018-05-13T15:01:00Z
#> 50  2018-05-13T12:29:08Z
#> 51  2018-05-12T22:20:16Z
#> 52  2018-05-12T22:02:55Z
#> 53  2018-05-12T21:08:55Z
#> 54  2018-05-11T23:49:40Z
#> 55  2018-05-11T23:39:01Z
#> 56  2018-05-11T20:56:25Z
#> 57  2018-05-11T19:30:16Z
#> 58  2018-05-11T00:49:43Z
#> 59  2018-05-10T14:37:57Z
#> 60  2018-05-10T14:33:00Z
#> 61  2018-05-10T14:30:27Z
#> 62  2018-05-10T10:01:43Z
#> 63  2018-05-10T02:19:02Z
#> 64  2018-05-09T22:41:03Z
#> 65  2018-05-09T22:38:10Z
#> 66  2018-05-09T12:35:51Z
#> 67  2018-05-09T12:30:56Z
#> 68  2018-05-09T12:00:30Z
#> 69  2018-05-09T11:48:17Z
#> 70  2018-05-09T11:38:45Z
#> 71  2018-05-09T11:24:20Z
#> 72  2018-05-08T22:11:13Z
#> 73  2018-05-08T18:52:00Z
#> 74  2018-05-08T11:30:23Z
#> 75  2018-05-08T11:22:53Z
#> 76  2018-05-08T11:09:23Z
#> 77  2018-05-07T18:44:32Z
#> 78  2018-05-07T17:20:50Z
#> 79  2018-05-07T14:08:37Z
#> 80  2018-05-07T13:35:32Z
#> 81  2018-05-07T13:29:49Z
#> 82  2018-05-07T13:05:44Z
#> 83  2018-05-07T13:00:18Z
#> 84  2018-05-07T11:39:53Z
#> 85  2018-05-07T11:27:34Z
#> 86  2018-05-07T11:04:47Z
#> 87  2018-05-07T10:53:49Z
#> 88  2018-05-05T21:35:50Z
#> 89  2018-05-05T00:31:30Z
#> 90  2018-05-05T00:17:34Z
#> 91  2018-05-05T00:08:03Z
#> 92  2018-05-04T22:56:13Z
#> 93  2018-05-04T21:59:28Z
#> 94  2018-05-04T21:58:44Z
#> 95  2018-05-04T20:37:47Z
#> 96  2018-05-04T13:27:50Z
#> 97  2018-05-04T10:57:26Z
#> 98  2018-05-04T10:45:31Z
#> 99  2018-05-04T10:37:48Z
#> 100 2018-05-04T10:28:58Z
#> 101 2018-05-04T10:22:31Z
#> 102 2018-05-03T18:20:41Z
#> 103 2018-05-03T16:49:29Z
#> 104 2018-05-03T16:27:05Z
#> 105 2018-05-03T11:00:14Z
#> 106 2018-05-03T10:54:38Z
#> 107 2018-05-03T10:46:09Z
#> 108 2018-05-03T03:45:24Z
#> 109 2018-05-03T03:37:02Z
#> 110 2018-05-03T00:53:30Z
#> 111 2018-05-02T22:40:23Z
#> 112 2018-05-02T20:27:47Z
#> 113 2018-05-02T18:16:56Z
#> 114 2018-05-02T14:45:54Z
#> 115 2018-05-02T13:33:41Z
#> 116 2018-05-02T13:23:17Z
#> 117 2018-05-02T11:45:08Z
#> 118 2018-05-01T19:42:58Z
#> 119 2018-05-01T18:14:11Z
#> 120 2018-05-01T16:57:13Z
#> 121 2018-05-01T15:23:44Z
#> 122 2018-05-01T11:34:13Z
#> 123 2018-05-01T11:00:00Z
#> 124 2018-05-01T10:47:30Z
#>                                                                                                                                                                                                                                                                                                 text
#> 1               If the FBI or DOJ was infiltrating a campaign for the benefit of another campaign, that is a really big deal. Only the release or review of documents that the House Intelligence Committee (also, Senate Judiciary) is asking for can give the conclusive answers. Drain the Swamp!
#> 2                                                                                                                                 Great to have our incredible First Lady back home in the White House. Melania is feeling and doing really well. Thank you for all of your prayers and best wishes!
#> 3                                                                                                                                                                                                Happy #ArmedForcesDay to our GREAT military men and women for their selfless service to our Nation!
#> 4                                                                                America is blessed with extraordinary energy abundance, including more than 250 years worth of beautiful clean coal. We have ended the war on coal, and will continue to work to promote American energy dominance!
#> 5              California finally deserves a great Governor, one who understands borders, crime and lowering taxes. John Cox is the man - heâ\200\231ll be the best Governor youâ\200\231ve ever had. I fully endorse John Cox for Governor and look forward to working with him to Make California Great Again!
#> 6                        Just met with UN Secretary-General AntÃ³nio Guterres who is working hard to â\200œMake the United Nations Great Again.â\200\235 When the UN does more to solve conflicts around the world, it means the U.S. has less to do and we save money. @NikkiHaley is doing a fantastic job!
#> 7                                                                                       America is a Nation that believes in the power of redemption. America is a Nation that believes in second chances - and America is a Nation that believes that the best is always yet to come! #PrisonReform
#> 8                We grieve for the terrible loss of life, and send our support and love to everyone affected by this horrible attack in Texas. To the students, families, teachers and personnel at Santa Fe High School â\200“ we are with you in this tragic hour, and we will be with you forever...
#> 9                                                                                                                                                                                                                           School shooting in Texas. Early reports not looking good. God bless all!
#> 10              Reports are there was indeed at least one FBI representative implanted, for political purposes, into my campaign for president. It took place very early on, and long before the phony Russia Hoax became a â\200œhotâ\200\235 Fake News story. If true - all time biggest political scandal!
#> 11            Why isnâ\200\231t disgraced FBI official Andrew McCabe being investigated for the $700,000 Crooked Hillary Democrats in Virginia, led by Clinton best friend Terry M (under FBI investigation that they killed) gave to McCabeâ\200\231s wife in her run for office? Then dropped case on Clinton!
#> 12                   Fake News Media had me calling Immigrants, or Illegal Immigrants, â\200œAnimals.â\200\235 Wrong! They were begrudgingly forced to withdraw their stories. I referred to MS 13 Gang Members as â\200œAnimals,â\200\235 a big difference - and so true. Fake News got it purposely wrong, as usual!
#> 13                                                 â\200œApparently the DOJ put a Spy in the Trump Campaign. This has never been done before and by any means necessary, they are out to frame Donald Trump for crimes he didnâ\200\231t commit.â\200\235  David Asman  @LouDobbs @GreggJarrett   Really bad stuff!
#> 14                                                                                                                                                                               It was my great honor to visit with our HEROES last night at Walter Reed Medical Center. There is nobody like them!
#> 15                                                                                                                                                              Tomorrow, the House will vote on a strong Farm Bill, which includes work requirements. We must support our Nationâ\200\231s great farmers!
#> 16                                                                                 Great talk with my friend President Mauricio Macri of Argentina this week. He is doing such a good job for Argentina. I support his vision for transforming his countryâ\200\231s economy and unleashing its potential!
#> 17                                                                                                                                                                                                                  Talking trade with the Vice Premier of the Peopleâ\200\231s Republic of China, Liu He.
#> 18                                                                                                                                                                                                                                             Congratulations to our new CIA Director, Gina Haspel!
#> 19          Congrats to the House for passing the VA MISSION Act yesterday. Without this funding our veterans will be forced to stand in never ending lines in order to receive care. Putting politics over our veterans care is UNACCEPTABLE â\200“ Senate must vote yes on this bill by Memorial Day!
#> 20                                                                    Despite the disgusting, illegal and unwarranted Witch Hunt, we have had the most successful first 17 month Administration in U.S. history - by far! Sorry to the Fake News Media and â\200œHaters,â\200\235 but thatâ\200\231s the way it is!
#> 21                Wow, word seems to be coming out that the Obama FBI â\200œSPIED ON THE TRUMP CAMPAIGN WITH AN EMBEDDED INFORMANT.â\200\235 Andrew McCarthy says, â\200œThereâ\200\231s probably no doubt that they had at least one confidential informant in the campaign.â\200\235 If so, this is bigger than Watergate!
#> 22            Congratulations America, we are now into the second year of the greatest Witch Hunt in American History...and there is still No Collusion and No Obstruction. The only Collusion was that done by Democrats who were unable to win an Election despite the spending of far more money!
#> 23                                                                              Gina Haspel is one step closer to leading our brave men and women at the CIA. She is exceptionally qualified and the Senate should confirm her immediately. We need her to keep our great country safe! #ConfirmGina
#> 24                                                                                                                   ...and voted against the massive Tax Cut Bill. Heâ\200\231s also weak on borders and crime. Sadly, our great Military and Vets mean nothing to Bobby Jr. Lou Barletta will win! #MAGA
#> 25                             Lou Barletta will be a great Senator for Pennsylvania but his opponent, Bob Casey, has been a do-nothing Senator who only shows up at election time. He votes along the Nancy Pelosi, Elizabeth Warren lines, loves sanctuary cities, bad and expensive healthcare...
#> 26                                                                                                                                                                                                    Today, it was my great honor to welcome President Mirziyoyev of Uzbekistan to the @WhiteHouse!
#> 27                                                                                                                              House votes today on Choice/MISSION Act. Who will stand with our Great Vets, caregivers, and Veterans Service Organizations? Must get Choice passed by Memorial Day!
#> 28                                                                                                                                                             ...havenâ\200\231t even started yet! The U.S. has very little to give, because it has given so much over the years. China has much to give!
#> 29                                         ...We have not seen Chinaâ\200\231s demands yet, which should be few in that previous U.S. Administrations have done so poorly in negotiating. China has seen our demands. There has been no folding as the media would love people to believe, the meetings...
#> 30                          The Washington Post and CNN have typically written false stories about our trade negotiations with China. Nothing has happened with ZTE except as it pertains to the larger trade deal. Our country has been losing hundreds of billions of dollars a year with China...
#> 31                                                                                                                                                        Congratulations to Deb Fischer. The people of Nebraska have seen what a great job she is doing - and it showed up at the ballot box! #MAGA
#> 32                                  Congratulations to Lou Barletta of Pennsylvania. He will be a great Senator and will represent his people well - like they havenâ\200\231t been represented in many years. Lou is a friend of mine and a special guy, he will very much help MAKE AMERICA GREAT AGAIN!
#> 33                                                                                                                                                                                                          Thank you to the Washington Examiner and @CortesSteve on the great article - on WINNING!
#> 34                                                                                                                                                                                                                                                                         #PeaceOfficersMemorialDay
#> 35        Today is one of the most important and solemn occasions of the year â\200“ the day we pay tribute to the Law Enforcement Heroes who gave their lives in the line of duty. They made the ultimate sacrifice so that we could live in safety and peace. We stand with our police (HEROES) 100%!
#> 36                                                                                                                                                                                                                     Nebraska - make sure you get out to the polls and VOTE for Deb Fischer today!
#> 37              Can you believe that with all of the made up, unsourced stories I get from the Fake News Media, together with the  $10,000,000 Russian Witch Hunt (there is no Collusion), I now have my best Poll Numbers in a year. Much of the Media may be corrupt, but the People truly get it!
#> 38                                                                                                                                             Trade negotiations are continuing with China. They have been making hundreds of billions of dollars a year from the U.S., for many years. Stay tuned!
#> 39                                                                                                                                                                       Our great First Lady is doing really well. Will be leaving hospital in 2 or 3 days. Thank you for so much love and support!
#> 40                                                                                                                              Heading over to Walter Reed Medical Center to see our great First Lady, Melania. Successful procedure, she is in good spirits. Thank you to all of the well-wishers!
#> 41                                         The so-called leaks coming out of the White House are a massive over  exaggeration put out by the Fake News Media in order to make us look as bad as possible. With that being said, leakers are traitors and cowards, and we will find out who they are!
#> 42                                                               ZTE, the large Chinese phone company, buys a big percentage of individual parts from U.S. companies. This is also reflective of the larger trade deal we are negotiating with China and my personal relationship with President Xi.
#> 43                                                                                                                                                                                                                                                #USEmbassyJerusalem http://pscp.tv/w/1kvJpWoqeLdGE
#> 44                                                                                                                                                                                                                                                              Big day for Israel. Congratulations!
#> 45                                                                                                                                U.S. Embassy opening in Jerusalem will be covered live on @FoxNews & @FoxBusiness. Lead up to 9:00 A.M. (eastern) event has already begun. A great day for Israel!
#> 46              So sad to see the Terror Attack in Paris. At some point countries will have to open their eyes & see what is really going on. This kind of sickness & hatred is not compatible with a loving, peaceful, & successful country! Changes to our thought process on terror must be made.
#> 47                                                                                                                           Remember how badly Iran was behaving with the Iran Deal in place. They were trying to take over the Middle East by whatever means necessary. Now, that will not happen!
#> 48                                       China and the United States are working well together on trade, but past negotiations have been so one sided in favor of China, for so many years, that it is hard for them to make a deal that benefits both countries. But be cool, it will all work out!
#> 49                                                                        President Xi of China, and I, are working together to give massive Chinese phone company, ZTE, a way to get back into business, fast. Too many jobs in China lost. Commerce Department has been instructed to get it done!
#> 50                                                                                                                                                                                                                                                                           Happy Motherâ\200\231s Day!!!
#> 51               The Senate should get funding done before the August break, or NOT GO HOME. Wall and Border Security should be included. Also waiting for approval of almost 300 nominations, worst in history. Democrats are doing everything possible to obstruct, all they know how to do. STAY!
#> 52                                                                                                                             Iranâ\200\231s Military Budget is up more than 40% since the Obama negotiated Nuclear Deal was reached...just another indicator that it was all a big lie. But not anymore!
#> 53                                                                                                                      North Korea has announced that they will dismantle Nuclear Test Site this month, ahead of the big Summit Meeting on June 12th. Thank you, a very smart and gracious gesture!
#> 54                                                                           Why doesnâ\200\231t the Fake News Media state that the Trump Administrationâ\200\231s Anti-Trust Division has been, and is, opposed to the AT&T purchase of Time Warner in a currently ongoing Trial. Such a disgrace in reporting!
#> 55                                                                                                                                                                                        Big week next week when the American Embassy in Israel will be moved to Jerusalem. Congratulations to all!
#> 56                 The American people deserve a healthcare system that takes care of them â\200“ not one that takes advantage of them. We will work every day to ensure all Americans have access to the quality, affordable medication they need and deserve. We will not rest until the job is done!
#> 57                                                    Today, my Administration is launching the most sweeping action in history to lower the price of prescription drugs for the American People. We will have tougher negotiation, more competition, and much lower prices at the pharmacy counter!
#> 58                                                                                                                                                                                                                                                                          Thank you Indiana! #MAGA
#> 59                                                                                                                       The highly anticipated meeting between Kim Jong Un and myself will take place in Singapore on June 12th. We will both try to make it a very special moment for World Peace!
#> 60                                                                                                                                                                                                                                                   Five Most Wanted leaders of ISIS just captured!
#> 61       Senator Cryinâ\200\231 Chuck Schumer fought hard against the Bad Iran Deal, even going at it with President Obama, & then Voted AGAINST it! Now he says I should not have terminated the deal - but he doesnâ\200\231t really believe that! Same with Comey. Thought he was terrible until I fired him!
#> 62                                                                                                                                                                                                                                                   On behalf of the American people, WELCOME HOME!
#> 63                                                                                                                                                                                                               Gina Haspel did a spectacular job today. There is nobody even close to run the CIA!
#> 64                                                                                                                                                                                                                                 Looking forward to greeting the Hostages (no longer) at 2:00 A.M.
#> 65                                                                                                                                           The Failing New York Times criticized Secretary of State Pompeo for being AWOL (missing), when in fact he was flying to North Korea. Fake News, so bad!
#> 66                                                                                                                                        Secretary Pompeo and his â\200œguestsâ\200\235 will be landing at Andrews Air Force Base at 2:00 A.M. in the morning. I will be there to greet them. Very exciting!
#> 67           I am pleased to inform you that Secretary of State Mike Pompeo is in the air and on his way back from North Korea with the 3 wonderful gentlemen that everyone is looking so forward to meeting. They seem to be in good health. Also, good meeting with Kim Jong Un. Date & Place set.
#> 68                                                               Congratulations to Mike Dewine on his big win in the Great State of Ohio. He will be a great Governor with a heavy focus on HealthCare and Jobs.  His Socialist opponent in November should not do well, a big failure in last job!
#> 69                                                 Candace Owens of Turning Point USA is having a big impact on politics in our Country. She represents an ever expanding group of very smart â\200œthinkers,â\200\235 and it is wonderful to watch and hear the dialogue going on...so good for our Country!
#> 70          The Fake News is working overtime. Just reported that, despite the tremendous success we are having with the economy & all things else, 91% of the Network News about me is negative (Fake). Why do we work so hard in working with the media when it is corrupt? Take away credentials?
#> 71            The Republican Party had a great night. Tremendous voter energy and excitement, and all candidates are those who have a great chance of winning in November. The Economy is sooo strong, and with Nancy Pelosi wanting to end the big Tax Cuts and Raise Taxes, why wouldnâ\200\231t we win?
#> 72                                                                 The Iran Deal is defective at its core. If we do nothing, we know what will happen. In just a short time, the worldâ\200\231s leading state sponsor of terror will be on the cusp of acquiring the worldâ\200\231s most dangerous weapons....
#> 73                                                                                                                                                                                                                                                               Statement on the Iran Nuclear Deal:
#> 74                                                                                                                                                          John Kerry canâ\200\231t get over the fact that he had his chance and blew it! Stay away from negotiations John, you are hurting your country!
#> 75                                                                                       I will be speaking to my friend, President Xi of China, this morning at 8:30. The primary topics will be Trade, where good things will happen, and North Korea, where relationships and trust are building.
#> 76          Gina Haspel, my highly respected nominee to lead the CIA, is being praised for the fact that she has been, and alway will be, TOUGH ON TERROR! This is a woman who has been a leader wherever she has gone. The CIA wants her to lead them into Americaâ\200\231s  bright and glorious future!
#> 77                                                                                                                                                                                                        I will be announcing my decision on the Iran Deal tomorrow from the White House at 2:00pm.
#> 78                                                                                                                 National Prescription Drug #TakeBackDay numbers are in! Another record broken: nearly 1 MILLION pounds of Rx pills disposed! Letâ\200\231s keep fighting this opioid epidemic, America!
#> 79                                                                                                               The United States does not need John Kerryâ\200\231s possibly illegal Shadow Diplomacy on the very badly negotiated Iran Deal.  He was the one that created this MESS in the first place!
#> 80                                                                                   Is this Phony Witch Hunt going to go on even longer so it wrongfully impacts the Mid-Term Elections, which is what the Democrats always intended? Republicans better get tough and smart before it is too late!
#> 81              Lisa Page, who may hold the record for the most Emails in the shortest period of time (to her Lover, Peter S), and attorney Baker, are out at the FBI as part of the Probers getting caught? Why is Peter S still there? What a total mess. Our Country has to get back to Business!
#> 82                                                                                                                                                                            Good luck to Ric Grenell, our new Ambassador to Germany. A great and talented guy, he will represent our Country well!
#> 83                                                                                                                                 â\200œThe Great Revoltâ\200\235 by Salena Zito and Brad Todd does much to tell the story of our great Election victory. The Forgotten Men & Women are forgotten no longer!
#> 84                                       The 13 Angry Democrats in charge of the Russian Witch Hunt are starting to find out that there is a Court System in place that actually protects people from injustice...and just wait â\200\230till the Courts get to see your unrevealed Conflicts of Interest!
#> 85        The Russia Witch Hunt is rapidly losing credibility. House Intelligence Committee found No Collusion, Coordination or anything else with Russia. So now the Probe says OK, what else is there? How about Obstruction for a made up, phony crime.There is no O, itâ\200\231s called Fighting Back
#> 86            My highly respected nominee for CIA Director, Gina Haspel, has come under fire because she was too tough on Terrorists. Think of that, in these very dangerous times, we have the most qualified person, a woman, who Democrats want OUT because she is too tough on terror. Win Gina!
#> 87          To the great people of West Virginia we have, together, a really great chance to keep making a big difference. Problem is, Don Blankenship, currently running for Senate, canâ\200\231t win the General Election in your State...No way! Remember Alabama. Vote Rep. Jenkins or A.G. Morrisey!
#> 88                                                                                                                                                                                                                                                                        Thank you Cleveland, Ohio!
#> 89                Our high level delegation is on the way back from China where they had long meetings with Chinese leaders and business representatives. We will be meeting tomorrow to determine the results, but it is hard for China in that they have become very spoiled with U.S. trade wins!
#> 90                                                                                                          Just returned home to the beautiful White House, from Dallas, where the Arena was packed to the rafters with the great fans and supporters of the @NRA. It was so wonderful to be there!
#> 91                                                                                                                                       Great book just out by very successful businessman @AndyPuzder. Always known as somebody who knows how to win, â\200œCapitalist Comebackâ\200\235 will be a big hit!
#> 92                                                                                                                          I want to thank all of our friends and patriots at the @NRA. We will never fail, and we will always protect your Second Amendment! God Bless you, and God Bless America!
#> 93                                                                                                                                                                                               We are going to demand Congress secure the border in the upcoming CR. Illegal immigration must end!
#> 94                       Democrats and liberals in Congress want to disarm law-abiding Americans at the same time they are releasing dangerous criminal aliens and savage gang members onto our streets. Politicians who put criminal aliens before American Citizens should be voted out of office!
#> 95           All of us here today are united by the same timeless values. We believe that our liberty is a gift from our creator, and that no Government can ever take it away. We believe in the rule of law - and we support the men and women of law enforcement. We have pride in our history...
#> 96                                                                                                                                                                                                                           JUST OUT: 3.9% Unemployment. 4% is Broken! In the meantime, WITCH HUNT!
#> 97                                                                                                                                                                                                                                   Going to Dallas (the GREAT State of Texas) today. Leaving soon!
#> 98                                     NBC NEWS is wrong again! They cite â\200œsourcesâ\200\235 which are constantly wrong. Problem is, like so many others, the sources probably donâ\200\231t exist, they are fabricated, fiction! NBC, my former home with the Apprentice, is now as bad as Fake News CNN. Sad!
#> 99                                                                                                                                                                                                                            Andy McCarthy will be on  @LouDobbs tonight. 7:00 P.M. , @FoxBusiness.
#> 100                                                                                                                                                                                Because Jobs in the U.S. are doing so well, Americans receiving unemployment aid is the lowest since 1973. Great!
#> 101                                                                                            Our Southern Border is under siege. Congress must act now to change our weak and ineffective immigration laws. Must build a Wall. Mexico, which has a massive crime problem, is doing little to help!
#> 102                                                                                                                                                                                                                                                                             #NationalDayOfPrayer
#> 103         This spring marks 4yrs since the Phoenix VA crisis. We won't forget what happened to our GREAT VETS. Choice is vital, but the program needs work & is running out of $. Congress must fix Choice Program by Memorial Day so VETS can get the care they deserve. I will sign immediately!
#> 104                                                                                                                                                 Today, it was my great honor to celebrate the #NationalDayOfPrayer at the @WhiteHouse, in the Rose Garden! Proclamation: http://45.wh.gov/U33k7z
#> 105                            ...despite already having signed a detailed letter admitting that there was no affair. Prior to its violation by Ms. Clifford and her attorney, this was a private agreement. Money from the campaign, or campaign contributions, played no roll in this transaction.
#> 106          ...very common among celebrities and people of wealth. In this case it is in full force and effect and will be used in Arbitration for damages against Ms. Clifford (Daniels). The agreement was used to stop the false and extortionist accusations made by her about an affair,......
#> 107         Mr. Cohen, an attorney, received a monthly retainer, not from the campaign and having nothing to do with the campaign, from which he entered into, through reimbursement, a private contract between two parties, known as a non-disclosure agreement, or NDA. These agreements are.....
#> 108                                                                               Our great financial team is in China trying to negotiate a level playing field on trade! I look forward to being with President Xi in the not too distant future. We will always have a good (great) relationship!
#> 109                                                                                                Ainsley Earnhardt, a truly great person, just wrote a wonderful book, â\200œThe Light Within Me,â\200\235 which is doing really well. She is very special and so is her new book...bring it to number one!
#> 110                                                                                                                               As everybody is aware, the past Administration has long been asking for three hostages to be released from a North Korean Labor camp, but to no avail. Stay tuned!
#> 111 â\200œThis isnâ\200\231t some game. You are screwing with the work of the president of the United States.â\200\235  John Dowd, March 2018.  With North Korea, China, the Middle East and so much more, there is not much time to be thinking about this, especially since there was no Russian â\200œCollusion.â\200\235
#> 112     I have been briefed on the U.S. C-130 â\200œHerculesâ\200\235 cargo plane from the Puerto Rico National Guard that crashed near Savannah Hilton Head International Airport. Please join me in thoughts and prayers for the victims, their families and the great men and women of the National Guard.
#> 113                                                                                                                                                                                                                                                                      Congratulations @SecPompeo!
#> 114                                    A Rigged System - They donâ\200\231t want to turn over Documents to Congress. What are they afraid of? Why so much redacting? Why such unequal â\200œjustice?â\200\235 At some point I will have no choice but to use the powers granted to the Presidency and get involved!
#> 115                                                                    NEW BOOK - A MUST READ! â\200œThe Russia Hoax - The Illicit Scheme to Clear Hillary Clinton and Frame Donald Trumpâ\200\235 by the brilliant Fox News Legal Analyst Gregg Jarrett. A sad chapter for law enforcement. A rigged system!
#> 116    â\200œThe questions are an intrusion into the Presidentâ\200\231s Article 2  powers under the Constitution to fire any Executive Branch Employee...what the President was thinking is an outrageous.....as to the Presidentâ\200\231s unfettered power to fire anyone...â\200\235 Joe Digenova, former US Attorney
#> 117         There was no Collusion (it is a Hoax) and there is no Obstruction of Justice (that is a setup & trap). What there is is Negotiations going on with North Korea over Nuclear War, Negotiations going on with China over Trade Deficits, Negotiations on NAFTA, and much more. Witch Hunt!
#> 118                                                                                                                                                       Today, it was my great honor to thank and welcome heroic crew members and passengers of Southwest Airlines Flight 1380 at the @WhiteHouse!
#> 119                                                                                                                                                                                                                                                                Congratulations @ArmyWP_Football!
#> 120                                                                                                            Today I had the great honor of awarding the Commander-in-Chiefâ\200\231s Trophy, for the first time in 21 years, to the @ArmyWP_Football Black Knights at the @WhiteHouse. Congratulations!
#> 121                                                                                                                                                                            Yesterday, it was my great honor to welcome President @MBuhari of the Federal Republic of Nigeria to the @WhiteHouse!
#> 122                                                                                                                                                                                                         It would seem very hard to obstruct justice for a crime that never happened! Witch Hunt!
#> 123             Delegation heading to China to begin talks on the Massive Trade Deficit that has been created with our Country. Very much like North Korea, this should have been fixed years ago, not now. Same with other countries and NAFTA...but it will all get done. Great Potential for USA!
#> 124        So disgraceful that the questions concerning the Russian Witch Hunt were â\200œleakedâ\200\235 to the media. No questions on Collusion. Oh, I see...you have a made up, phony crime, Collusion, that never existed, and an investigation begun with illegally leaked classified information. Nice!
#>     context is_quote_tweet is_retweet quoted_handle
#> 1        NA          FALSE      FALSE          <NA>
#> 2        NA          FALSE      FALSE          <NA>
#> 3        NA          FALSE      FALSE          <NA>
#> 4        NA          FALSE      FALSE          <NA>
#> 5        NA          FALSE      FALSE          <NA>
#> 6        NA          FALSE      FALSE          <NA>
#> 7        NA          FALSE      FALSE          <NA>
#> 8        NA          FALSE      FALSE          <NA>
#> 9        NA          FALSE      FALSE          <NA>
#> 10       NA          FALSE      FALSE          <NA>
#> 11       NA          FALSE      FALSE          <NA>
#> 12       NA          FALSE      FALSE          <NA>
#> 13       NA          FALSE      FALSE          <NA>
#> 14       NA          FALSE      FALSE          <NA>
#> 15       NA          FALSE      FALSE          <NA>
#> 16       NA          FALSE      FALSE          <NA>
#> 17       NA          FALSE      FALSE          <NA>
#> 18       NA          FALSE      FALSE          <NA>
#> 19       NA          FALSE      FALSE          <NA>
#> 20       NA          FALSE      FALSE          <NA>
#> 21       NA          FALSE      FALSE          <NA>
#> 22       NA          FALSE      FALSE          <NA>
#> 23       NA          FALSE      FALSE          <NA>
#> 24       NA          FALSE      FALSE          <NA>
#> 25       NA          FALSE      FALSE          <NA>
#> 26       NA          FALSE      FALSE          <NA>
#> 27       NA          FALSE      FALSE          <NA>
#> 28       NA          FALSE      FALSE          <NA>
#> 29       NA          FALSE      FALSE          <NA>
#> 30       NA          FALSE      FALSE          <NA>
#> 31       NA          FALSE      FALSE          <NA>
#> 32       NA          FALSE      FALSE          <NA>
#> 33       NA          FALSE      FALSE          <NA>
#> 34       NA          FALSE      FALSE          <NA>
#> 35       NA          FALSE      FALSE          <NA>
#> 36       NA           TRUE      FALSE @DebFischerNE
#> 37       NA          FALSE      FALSE          <NA>
#> 38       NA          FALSE      FALSE          <NA>
#> 39       NA          FALSE      FALSE          <NA>
#> 40       NA          FALSE      FALSE          <NA>
#> 41       NA          FALSE      FALSE          <NA>
#> 42       NA          FALSE      FALSE          <NA>
#> 43       NA          FALSE      FALSE          <NA>
#> 44       NA          FALSE      FALSE          <NA>
#> 45       NA          FALSE      FALSE          <NA>
#> 46       NA          FALSE      FALSE          <NA>
#> 47       NA          FALSE      FALSE          <NA>
#> 48       NA          FALSE      FALSE          <NA>
#> 49       NA          FALSE      FALSE          <NA>
#> 50       NA          FALSE      FALSE          <NA>
#> 51       NA          FALSE      FALSE          <NA>
#> 52       NA          FALSE      FALSE          <NA>
#> 53       NA          FALSE      FALSE          <NA>
#> 54       NA          FALSE      FALSE          <NA>
#> 55       NA          FALSE      FALSE          <NA>
#> 56       NA          FALSE      FALSE          <NA>
#> 57       NA          FALSE      FALSE          <NA>
#> 58       NA          FALSE      FALSE          <NA>
#> 59       NA          FALSE      FALSE          <NA>
#> 60       NA          FALSE      FALSE          <NA>
#> 61       NA          FALSE      FALSE          <NA>
#> 62       NA          FALSE      FALSE          <NA>
#> 63       NA          FALSE      FALSE          <NA>
#> 64       NA          FALSE      FALSE          <NA>
#> 65       NA          FALSE      FALSE          <NA>
#> 66       NA          FALSE      FALSE          <NA>
#> 67       NA          FALSE      FALSE          <NA>
#> 68       NA          FALSE      FALSE          <NA>
#> 69       NA          FALSE      FALSE          <NA>
#> 70       NA          FALSE      FALSE          <NA>
#> 71       NA          FALSE      FALSE          <NA>
#> 72       NA          FALSE      FALSE          <NA>
#> 73       NA          FALSE      FALSE          <NA>
#> 74       NA          FALSE      FALSE          <NA>
#> 75       NA          FALSE      FALSE          <NA>
#> 76       NA          FALSE      FALSE          <NA>
#> 77       NA          FALSE      FALSE          <NA>
#> 78       NA          FALSE      FALSE          <NA>
#> 79       NA          FALSE      FALSE          <NA>
#> 80       NA          FALSE      FALSE          <NA>
#> 81       NA          FALSE      FALSE          <NA>
#> 82       NA          FALSE      FALSE          <NA>
#> 83       NA          FALSE      FALSE          <NA>
#> 84       NA          FALSE      FALSE          <NA>
#> 85       NA          FALSE      FALSE          <NA>
#> 86       NA          FALSE      FALSE          <NA>
#> 87       NA          FALSE      FALSE          <NA>
#> 88       NA          FALSE      FALSE          <NA>
#> 89       NA          FALSE      FALSE          <NA>
#> 90       NA          FALSE      FALSE          <NA>
#> 91       NA          FALSE      FALSE          <NA>
#> 92       NA          FALSE      FALSE          <NA>
#> 93       NA          FALSE      FALSE          <NA>
#> 94       NA          FALSE      FALSE          <NA>
#> 95       NA          FALSE      FALSE          <NA>
#> 96       NA          FALSE      FALSE          <NA>
#> 97       NA          FALSE      FALSE          <NA>
#> 98       NA          FALSE      FALSE          <NA>
#> 99       NA          FALSE      FALSE          <NA>
#> 100      NA          FALSE      FALSE          <NA>
#> 101      NA          FALSE      FALSE          <NA>
#> 102      NA          FALSE      FALSE          <NA>
#> 103      NA          FALSE      FALSE          <NA>
#> 104      NA          FALSE      FALSE          <NA>
#> 105      NA          FALSE      FALSE          <NA>
#> 106      NA          FALSE      FALSE          <NA>
#> 107      NA          FALSE      FALSE          <NA>
#> 108      NA          FALSE      FALSE          <NA>
#> 109      NA          FALSE      FALSE          <NA>
#> 110      NA          FALSE      FALSE          <NA>
#> 111      NA          FALSE      FALSE          <NA>
#> 112      NA          FALSE      FALSE          <NA>
#> 113      NA          FALSE      FALSE          <NA>
#> 114      NA          FALSE      FALSE          <NA>
#> 115      NA          FALSE      FALSE          <NA>
#> 116      NA          FALSE      FALSE          <NA>
#> 117      NA          FALSE      FALSE          <NA>
#> 118      NA          FALSE      FALSE          <NA>
#> 119      NA          FALSE      FALSE          <NA>
#> 120      NA          FALSE      FALSE          <NA>
#> 121      NA          FALSE      FALSE          <NA>
#> 122      NA          FALSE      FALSE          <NA>
#> 123      NA          FALSE      FALSE          <NA>
#> 124      NA          FALSE      FALSE          <NA>
#>                                                                                                                quoted_text
#> 1                                                                                                                     <NA>
#> 2                                                                                                                     <NA>
#> 3                                                                                                                     <NA>
#> 4                                                                                                                     <NA>
#> 5                                                                                                                     <NA>
#> 6                                                                                                                     <NA>
#> 7                                                                                                                     <NA>
#> 8                                                                                                                     <NA>
#> 9                                                                                                                     <NA>
#> 10                                                                                                                    <NA>
#> 11                                                                                                                    <NA>
#> 12                                                                                                                    <NA>
#> 13                                                                                                                    <NA>
#> 14                                                                                                                    <NA>
#> 15                                                                                                                    <NA>
#> 16                                                                                                                    <NA>
#> 17                                                                                                                    <NA>
#> 18                                                                                                                    <NA>
#> 19                                                                                                                    <NA>
#> 20                                                                                                                    <NA>
#> 21                                                                                                                    <NA>
#> 22                                                                                                                    <NA>
#> 23                                                                                                                    <NA>
#> 24                                                                                                                    <NA>
#> 25                                                                                                                    <NA>
#> 26                                                                                                                    <NA>
#> 27                                                                                                                    <NA>
#> 28                                                                                                                    <NA>
#> 29                                                                                                                    <NA>
#> 30                                                                                                                    <NA>
#> 31                                                                                                                    <NA>
#> 32                                                                                                                    <NA>
#> 33                                                                                                                    <NA>
#> 34                                                                                                                    <NA>
#> 35                                                                                                                    <NA>
#> 36  Today's the day! Make sure to go out and vote before the polls close (8pm CT, 7pm MT). RT if you voted for Deb! #NEsen
#> 37                                                                                                                    <NA>
#> 38                                                                                                                    <NA>
#> 39                                                                                                                    <NA>
#> 40                                                                                                                    <NA>
#> 41                                                                                                                    <NA>
#> 42                                                                                                                    <NA>
#> 43                                                                                                                    <NA>
#> 44                                                                                                                    <NA>
#> 45                                                                                                                    <NA>
#> 46                                                                                                                    <NA>
#> 47                                                                                                                    <NA>
#> 48                                                                                                                    <NA>
#> 49                                                                                                                    <NA>
#> 50                                                                                                                    <NA>
#> 51                                                                                                                    <NA>
#> 52                                                                                                                    <NA>
#> 53                                                                                                                    <NA>
#> 54                                                                                                                    <NA>
#> 55                                                                                                                    <NA>
#> 56                                                                                                                    <NA>
#> 57                                                                                                                    <NA>
#> 58                                                                                                                    <NA>
#> 59                                                                                                                    <NA>
#> 60                                                                                                                    <NA>
#> 61                                                                                                                    <NA>
#> 62                                                                                                                    <NA>
#> 63                                                                                                                    <NA>
#> 64                                                                                                                    <NA>
#> 65                                                                                                                    <NA>
#> 66                                                                                                                    <NA>
#> 67                                                                                                                    <NA>
#> 68                                                                                                                    <NA>
#> 69                                                                                                                    <NA>
#> 70                                                                                                                    <NA>
#> 71                                                                                                                    <NA>
#> 72                                                                                                                    <NA>
#> 73                                                                                                                    <NA>
#> 74                                                                                                                    <NA>
#> 75                                                                                                                    <NA>
#> 76                                                                                                                    <NA>
#> 77                                                                                                                    <NA>
#> 78                                                                                                                    <NA>
#> 79                                                                                                                    <NA>
#> 80                                                                                                                    <NA>
#> 81                                                                                                                    <NA>
#> 82                                                                                                                    <NA>
#> 83                                                                                                                    <NA>
#> 84                                                                                                                    <NA>
#> 85                                                                                                                    <NA>
#> 86                                                                                                                    <NA>
#> 87                                                                                                                    <NA>
#> 88                                                                                                                    <NA>
#> 89                                                                                                                    <NA>
#> 90                                                                                                                    <NA>
#> 91                                                                                                                    <NA>
#> 92                                                                                                                    <NA>
#> 93                                                                                                                    <NA>
#> 94                                                                                                                    <NA>
#> 95                                                                                                                    <NA>
#> 96                                                                                                                    <NA>
#> 97                                                                                                                    <NA>
#> 98                                                                                                                    <NA>
#> 99                                                                                                                    <NA>
#> 100                                                                                                                   <NA>
#> 101                                                                                                                   <NA>
#> 102                                                                                                                   <NA>
#> 103                                                                                                                   <NA>
#> 104                                                                                                                   <NA>
#> 105                                                                                                                   <NA>
#> 106                                                                                                                   <NA>
#> 107                                                                                                                   <NA>
#> 108                                                                                                                   <NA>
#> 109                                                                                                                   <NA>
#> 110                                                                                                                   <NA>
#> 111                                                                                                                   <NA>
#> 112                                                                                                                   <NA>
#> 113                                                                                                                   <NA>
#> 114                                                                                                                   <NA>
#> 115                                                                                                                   <NA>
#> 116                                                                                                                   <NA>
#> 117                                                                                                                   <NA>
#> 118                                                                                                                   <NA>
#> 119                                                                                                                   <NA>
#> 120                                                                                                                   <NA>
#> 121                                                                                                                   <NA>
#> 122                                                                                                                   <NA>
#> 123                                                                                                                   <NA>
#> 124                                                                                                                   <NA>
#>                                                               profile_image_url
#> 1   https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 2   https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 3   https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 4   https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 5   https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 6   https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 7   https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 8   https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 9   https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 10  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 11  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 12  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 13  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 14  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 15  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 16  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 17  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 18  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 19  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 20  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 21  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 22  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 23  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 24  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 25  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 26  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 27  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 28  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 29  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 30  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 31  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 32  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 33  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 34  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 35  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 36  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 37  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 38  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 39  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 40  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 41  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 42  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 43  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 44  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 45  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 46  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 47  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 48  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 49  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 50  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 51  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 52  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 53  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 54  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 55  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 56  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 57  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 58  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 59  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 60  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 61  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 62  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 63  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 64  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 65  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 66  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 67  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 68  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 69  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 70  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 71  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 72  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 73  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 74  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 75  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 76  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 77  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 78  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 79  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 80  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 81  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 82  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 83  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 84  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 85  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 86  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 87  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 88  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 89  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 90  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 91  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 92  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 93  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 94  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 95  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 96  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 97  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 98  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 99  https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 100 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 101 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 102 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 103 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 104 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 105 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 106 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 107 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 108 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 109 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 110 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 111 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 112 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 113 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 114 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 115 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 116 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 117 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 118 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 119 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 120 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 121 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 122 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 123 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#> 124 https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_bigger.jpg
#>                                                  media reply_count
#> 1                                                 <NA>       35004
#> 2                                                 <NA>       16657
#> 3                                                 <NA>        6298
#> 4                                                 <NA>       31687
#> 5                                                 <NA>       21123
#> 6                                                 <NA>        6681
#> 7                                                 <NA>        8893
#> 8                                                 <NA>       33601
#> 9                                                 <NA>       38883
#> 10                                                <NA>       23354
#> 11                                                <NA>       18463
#> 12                                                <NA>       22569
#> 13                                                <NA>       16123
#> 14  /realDonaldTrump/status/997239623268085761/photo/1        5781
#> 15                                                <NA>        6671
#> 16                                                <NA>        6126
#> 17  /realDonaldTrump/status/997227223638790144/photo/1        4220
#> 18  /realDonaldTrump/status/997220260259487744/photo/1        7432
#> 19                                                <NA>        6399
#> 20                                                <NA>       38037
#> 21                                                <NA>       33749
#> 22                                                <NA>       35838
#> 23                                                <NA>       10181
#> 24                                                <NA>        6554
#> 25                                                <NA>        5982
#> 26                                                <NA>        3952
#> 27                                                <NA>        4887
#> 28                                                <NA>        7232
#> 29                                                <NA>        2816
#> 30                                                <NA>        9022
#> 31                                                <NA>        3313
#> 32                                                <NA>        6867
#> 33                       https://t.co/b5dfUABN5q?amp=1       10816
#> 34                                                <NA>        3503
#> 35                                                <NA>        6305
#> 36     /DebFischerNE/status/996371820512194560/photo/1        4192
#> 37                                                <NA>       29773
#> 38                                                <NA>       10525
#> 39                                                <NA>       12270
#> 40                                                <NA>       20185
#> 41                                                <NA>       42206
#> 42                                                <NA>       12304
#> 43                                                <NA>       10536
#> 44                                                <NA>       31715
#> 45                                                <NA>       13303
#> 46                                                <NA>       16448
#> 47                                                <NA>       17694
#> 48                                                <NA>       10384
#> 49                                                <NA>       27617
#> 50                                                <NA>       17322
#> 51                                                <NA>       23091
#> 52                                                <NA>       13326
#> 53                                                <NA>       14285
#> 54                                                <NA>       22373
#> 55                                                <NA>       13181
#> 56                                                <NA>       14169
#> 57                       https://t.co/xdakX43a4d?amp=1       10729
#> 58                       https://t.co/fCv76VyUax?amp=1       12152
#> 59                                                <NA>       23313
#> 60                                                <NA>       16185
#> 61                                                <NA>       20075
#> 62                                                <NA>       15332
#> 63                                                <NA>        9629
#> 64                                                <NA>       10686
#> 65                                                <NA>       10650
#> 66                                                <NA>       14426
#> 67                                                <NA>       13879
#> 68                                                <NA>        5733
#> 69                                                <NA>        7991
#> 70                                                <NA>       52425
#> 71                                                <NA>        9094
#> 72                                                <NA>       26956
#> 73                       https://t.co/O3SpryCKkc?amp=1       21161
#> 74                                                <NA>       24897
#> 75                                                <NA>        8390
#> 76                                                <NA>        8395
#> 77                                                <NA>       25132
#> 78                                                <NA>        6961
#> 79                                                <NA>       19778
#> 80                                                <NA>       24159
#> 81                                                <NA>       14928
#> 82                                                <NA>        3097
#> 83                                                <NA>        6125
#> 84                                                <NA>       22997
#> 85                                                <NA>       24662
#> 86                                                <NA>       12509
#> 87                                                <NA>        7316
#> 88                       https://t.co/ROEFRLY7jP?amp=1       11551
#> 89                                                <NA>       13202
#> 90                                                <NA>       15650
#> 91                                                <NA>        6705
#> 92                                                <NA>       13854
#> 93                                                <NA>       11609
#> 94                                                <NA>       27853
#> 95                                                <NA>       12746
#> 96                                                <NA>       24749
#> 97                                                <NA>       13269
#> 98                                                <NA>       18418
#> 99                                                <NA>        3492
#> 100                                               <NA>        7953
#> 101                                               <NA>       13983
#> 102                                               <NA>       11630
#> 103                                               <NA>        8245
#> 104                                               <NA>        8960
#> 105                                               <NA>       43091
#> 106                                               <NA>       18401
#> 107                                               <NA>       20675
#> 108                                               <NA>        8530
#> 109                                               <NA>        9503
#> 110                                               <NA>       20033
#> 111                                               <NA>       27224
#> 112                                               <NA>        5841
#> 113                                               <NA>        4796
#> 114                                               <NA>       43152
#> 115                                               <NA>       22354
#> 116                                               <NA>       15546
#> 117                                               <NA>       28378
#> 118                                               <NA>        7517
#> 119                                               <NA>        2812
#> 120                      https://t.co/KRQXR3xEES?amp=1        4541
#> 121                                               <NA>        6274
#> 122                                               <NA>       36425
#> 123                                               <NA>        6548
#> 124                                               <NA>       39683
#>     retweet_count like_count
#> 1           31377     115193
#> 2           20544     145731
#> 3           15106      69522
#> 4           17465      90380
#> 5           21732      93200
#> 6            9462      47686
#> 7           12559      56309
#> 8           15293      73761
#> 9           15029      85896
#> 10          23834      81545
#> 11          20704      80553
#> 12          37367     145741
#> 13          18469      68567
#> 14          11615      65750
#> 15          12454      66856
#> 16          14849      75846
#> 17           6946      39370
#> 18          16334      76260
#> 19          16723      73402
#> 20          27898     124592
#> 21          29531     104506
#> 22          25947     113909
#> 23          14816      74783
#> 24           8199      40488
#> 25          12391      52531
#> 26           7349      41996
#> 27          13093      62911
#> 28           8224      43316
#> 29           7738      40092
#> 30          11606      53424
#> 31          10563      59361
#> 32          15096      79305
#> 33          10191      44345
#> 34           9603      45218
#> 35          16319      76261
#> 36          10333      42018
#> 37          27676     127612
#> 38          12833      71094
#> 39          18327     145718
#> 40          19743     136496
#> 41          23289     108613
#> 42          10893      57374
#> 43          13825      58512
#> 44          27161     151738
#> 45          15362      77509
#> 46          26950     121443
#> 47          23967     113093
#> 48          17204      91859
#> 49          15172      76637
#> 50          25694     119960
#> 51          27541     105306
#> 52          24131     101171
#> 53          29604     148026
#> 54          19666      85233
#> 55          26872     132291
#> 56          17504      79459
#> 57          19489      84263
#> 58          15438      75070
#> 59          54585     216839
#> 60          59320     275804
#> 61          23121      96517
#> 62          43543     175076
#> 63          16480      87551
#> 64          15720      99124
#> 65          22732      95452
#> 66          24005     109895
#> 67          39298     153503
#> 68          11794      60265
#> 69          29029     124099
#> 70          23926     108673
#> 71          16650      75465
#> 72          21069      86610
#> 73          23769      81526
#> 74          29057     124477
#> 75          14721      78562
#> 76          18017      83313
#> 77          23298     100549
#> 78          11841      60646
#> 79          29414     107734
#> 80          20212      86068
#> 81          18620      79259
#> 82          10245      59124
#> 83          10685      53216
#> 84          25973      99511
#> 85          18554      81799
#> 86          21495      83959
#> 87          12824      53997
#> 88          13957      70320
#> 89          15055      73307
#> 90          15724      88308
#> 91           8365      46115
#> 92          15688      67668
#> 93          21293     104822
#> 94          31570     119031
#> 95          15944      66211
#> 96          26491     124548
#> 97          10697      75934
#> 98          18022      78900
#> 99           5219      29826
#> 100         19624     101145
#> 101         16865      73611
#> 102         13718      62873
#> 103         15277      69564
#> 104         11699      56322
#> 105         15097      76258
#> 106         14357      69203
#> 107         14380      67284
#> 108         13648      71108
#> 109         14780      78240
#> 110         19859      96367
#> 111         19973      83072
#> 112         17304      86242
#> 113         11909      57787
#> 114         27539     104420
#> 115         21555      80535
#> 116         15049      61359
#> 117         23272      98340
#> 118         13424      77791
#> 119          9428      50128
#> 120         11506      58099
#> 121         11409      51463
#> 122         23251     113972
#> 123         15853      75681
#> 124         22684      99878
```
