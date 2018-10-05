#devtools::install_github("ThinkR-open/tweetstorm")
library(tweetstorm)
library(rtweet)
library(dplyr)
create_token("noreastr18", 
             Sys.getenv("noreastr18_key"),
             Sys.getenv("noreastr18_secret"))
if(file.exists("noreastr18.rda")){
  load("noreastr18.rda")
  noreastr18<-tweetstorm:::update_search(noreastr18,"#noreastr18",n=1000)
  save(noreastr18,file="noreastr18.rda")
}
else{
  noreastr18<-rtweet::search_tweets("#noreastr18",n = 500)
  save(noreastr18, file = "noreastr18.rda")
}




