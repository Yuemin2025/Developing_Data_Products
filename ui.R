#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("MPG Prediction Based on Car Weight"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Enter Car Weight (in 1000 lbs)"),
      sliderInput("wtInput", "Weight:", min = 1.5, max = 5.5, value = 3.0, step = 0.1),
      h4("Documentation:"),
      p("This app predicts a car's miles per gallon (mpg) based on its weight using a simple linear regression model from the mtcars dataset. Slide the weight value, and the predicted mpg will update automatically. No advanced knowledge is needed—just explore! Data source: mtcars dataset in R.")
    ),
    
    mainPanel(
      h3("Predicted MPG"),
      textOutput("predMPG")
    )
  )
))


