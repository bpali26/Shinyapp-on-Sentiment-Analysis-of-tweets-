

#loading required libraries (after installing)
library(shiny)
library(twitteR)
library(tidytext)
library(dplyr)

#Setting up direct Authentication with twitter app
setup_twitter_oauth(consumer_key= "ENTER YOUR CONSUMER KEY", consumer_secret = "ENTER YOUR CONSUMER SECRET",access_token = "ENTER YOUR ACCESS TOKEN",access_secret = "ENTER YOUR ACCESS SECRET")
