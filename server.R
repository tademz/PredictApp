library(shiny)

diabetesRisk <- function(B0,B1,X) B0 + (B1*X)

shinyServer(
  function(input, output) {
    output$B0Value <- renderPrint({input$B0})
    output$B1Value <- renderPrint({input$B1})
    output$XValue <- renderPrint({input$X})
    output$prediction <- renderPrint({diabetesRisk(input$B0,input$B1,input$X)})
  }
)