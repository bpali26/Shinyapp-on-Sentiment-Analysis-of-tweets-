
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Tweets Sentiment Analysis"),
  
  # Sidebar with a text input for search string 
  sidebarLayout( 
    sidebarPanel( 
      textInput("search","Enter your search string" , value = "Convergytics", width = NULL, placeholder = "Convergytics"),
      submitButton("submit")
                ),
  # Shows a piechart for sentiment analysis
      mainPanel(plotOutput("piechart"))
                )
))

