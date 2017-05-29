
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  output$piechart <- renderPlot({
    
    # Extracting tweets
    tweets<-searchTwitter(input$search,1000,lang='en')  #fetching 1000 tweets containing the search string
    
    label<-input$search
    
    df<-twListToDF(tweets)  #converting tweets into dataframe
    
    num<-nrow(df)
    word_df<-unnest_tokens(df[1],words,text)  #breaking down every tweet into individual words
    
    nrc<-data.frame(get_sentiments("nrc"))   #selecting "nrc" dataset from sentiment package in tidytext
    
    sentiment_df<-nrc[!is.na(match(nrc[,1],word_df[,1])),]  #retrieving tweet words that match with nrc sentiment words
    
    sentiment_table<-sentiment_df %>% group_by(sentiment) %>% summarise(count=n()) #data formatting
    
    sentiment_table<-sentiment_table %>% mutate(Perc=round(count*100/sum(count),0)) #data formatting
    
    
    #plotting percentage sentiment in agreement with fetched tweet words
    pie(sentiment_table$count,labels = paste(sentiment_table$sentiment,sentiment_table$Perc,rep("%",10),sep="_"), col=rainbow(length(sentiment_table$sentiment)), main=paste0("Sentiment Analysis of ",num," tweets on: ",label))
    
  })
  
})
