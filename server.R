#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

WinsPoints <- function(Wins) Wins * 3
DrawsPoints <- function(Draws) Draws * 1
TeamPoints <- function(Wins, Draws) Wins * 3 + Draws * 1

shinyServer( function(input, output) {
  output$WinsPoints <- renderPrint({WinsPoints(input$Wins)})
  output$DrawsPoints <- renderPrint({DrawsPoints(input$Draws)})
  output$LossesPoints <- renderPrint({0})
  output$TeamPoints <- renderPrint({TeamPoints(input$Wins, input$Draws)})
  
}
)