#devtools::install_github("ThinkR-open/tweetstorm")
library(tweetstorm)
library(rtweet)
library(dplyr)
# Need to create a new app and update...
create_token("noreastr2018", 
             Sys.getenv("noreastr2018_key"),
             Sys.getenv("noreastr2018_secret"))
if(file.exists("noreastr18.rda")){
  load("noreastr18.rda")
  noreastr18<-tweetstorm:::update_search(noreastr18,"#noreastr18",n=1000)
  save(noreastr18,file="noreastr18.rda")
} else {
  noreastr18<-rtweet::search_tweets("#noreastr18",n = 500)
  save(noreastr18, file = "noreastr18.rda")
}


