library(shiny)

# UI defined 
shinyUI(
  pageWithSidebar(
    # Title
    headerPanel("Height Prediction"),
    
    sidebarPanel(
      numericInput('heightM', 'Height Mother', 170, min = 100, max = 200, step = 5),
      numericInput('heightF', 'Height Father', 180, min = 100, max = 210, step = 5),
      radioButtons(
        inputId  = "units",
        label    = "Units:",
        choices  = c("Centimeters" = 1, "Inches" = 2),
        selected = 1
      ),      
      submitButton('Submit'),
      h4('Documentation'),
      helpText("This application predicts the height of a child based on the height of the parents.  
              Select the desired measurement unit (centimeters or inches) , enter mother's and father's weight in the corresponding boxes, and click Submit button.  
              The predicted height for both male and female child will be displayed in the corresponding boxes on the right.
              The algorithm is based on the average difference in height between men and women of 13 cm.
              Son's height is calculated by adding 13 cm to the mother's height and averaging with the father's height. 
              Daughter's height is calculated by subtracting 13 cm from the father's height and averaging with the mother's height.")
    ),
    
    mainPanel(
      h3('Predicted Height'),
     h4('Son'),
     verbatimTextOutput("predictionS"),
      h4('Daughter '),
      verbatimTextOutput("predictionD")
    )
  )
)