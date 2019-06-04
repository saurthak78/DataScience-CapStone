library(shiny)
library(shinythemes)
library(dplyr)
require(markdown)
library(tm)

#setwd("D:/R/Work/CapStone/NLP/NextWord")
shinyUI(navbarPage("Coursera Capstone - Text Predictor",
    theme = shinytheme("spacelab"),
    
    #Tab 1
    tabPanel(p(icon("calculator"), "Next word prediction"),
        textInput("user_input", "Enter a word/string for next word prediction:", 
            value =  ""),
        tags$hr(),
        
        h4("Prediction 1"),
        textOutput("guess1"),
        h4("Prediction 2"),
        textOutput("guess2"),
        h4("Prediction 3"),
        textOutput("guess3")
        
    ),
    # Tab 2
    tabPanel(p(icon("thumbs-o-up"), "About"),
        includeMarkdown("about.md")
    )
))