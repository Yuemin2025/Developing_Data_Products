#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

shinyServer(function(input, output) {
  model <- reactive({
    lm(mpg ~ wt, data = mtcars)
  })
  
  output$predMPG <- renderText({
    wt <- input$wtInput
    pred <- predict(model(), newdata = data.frame(wt = wt))
    paste("Predicted MPG:", round(pred, 2))
  })
})