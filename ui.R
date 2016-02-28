#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Team Performance"),
    sidebarPanel(
      ## numericInput('glucose', 'Glucose mg/dl', 90, min = 50, max = 200, step = 5),
      numericInput('Wins', 'Wins', 0, min = 0, max = 38, step = 1),
      numericInput('Draws', 'Draws', 0, min = 0, max = 38, step = 1),
      numericInput('Losses', 'Losses', 0, min = 0, max = 38, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Total Points for your Team\'s Performance'),
      verbatimTextOutput("TeamPoints"),
      h5('Points from wins'),
      verbatimTextOutput('WinsPoints'),
      h5('Points from draws'),
      verbatimTextOutput('DrawsPoints'),
      h5('Points from losses'),
      verbatimTextOutput('LossesPoints')
    ) )
)
