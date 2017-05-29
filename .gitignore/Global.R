

#loading required libraries (after installing)
library(shiny)
library(twitteR)
library(tidytext)
library(dplyr)

#Setting up direct Authentication with twitter app
setup_twitter_oauth(consumer_key= "lnGRtmneG8SpIjryTUO0OQOTx", consumer_secret = "CUTN9TEcS4R9yT7nOwRZwMcQfTR9tv6o1hDEs7u2ESALyCwJjQ",access_token = "1144248948-sYwoL3H1qRojjE2asTbc9uBbuE3Qz430PeZZoSE",access_secret = "xFOgj2tQuZ0FKAgAcjcIzzUvtu8EnzmhijhtGSN7nhMWb")
