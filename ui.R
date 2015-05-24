library(shiny)


shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Linear Model Prediction"),
    sidebarPanel(
      p("This Shiny application is used by inputting an X value into a linear prediction function and returning a predicted value. To use this calculator please input the prediction model's intercept (B0), Slope (B1), and an X variable that is to be used for a prediction into the input fields on the left panel of the application. The calculator will display the input parameters and use the Y=B0+B1*X formula to calculate your prediction."),
      br(),
      numericInput('B0', 'B0 Intercept Value', 0.00, step = .01),
      numericInput('B1', 'B1 Slope Value', 0.00, step = .01),
      numericInput('X', 'X Value', 0.00, step = .01),
      submitButton('Submit')
    ),
    
    mainPanel(
      h3('Results of Prediction, Y=B0+B1*X'),
      h4('B0 Intercept Value Entered'),
      verbatimTextOutput("B0Value"),
      h4('B1 Slope Value Entered'),
      verbatimTextOutput("B1Value"),
      h4('X Value Entered'),
      verbatimTextOutput("XValue"),
      h4('Which resulted in a prediction of'),
      verbatimTextOutput("prediction")
    )
  )
)