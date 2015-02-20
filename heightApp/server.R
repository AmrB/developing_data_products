library(shiny)

# Calculate son's predicted height
sonHeight <- function(heightM, heightF, units) 
  if (units==1)
  {(heightM + 13 + heightF) / 2
  } else {round((heightM + 13*0.3937 + heightF) / 2 ,2)
  }
# Calculate daughter's predicted height
daughterHeight <- function(heightM, heightF, units) 
  if (units==1)
  {(heightM - 13 + heightF) / 2
  } else {round((heightM - 13*0.3937 + heightF) / 2 ,2)
  }
# Display results
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$height})
    output$predictionS <- renderPrint({sonHeight(input$heightM,input$heightF,input$units)})
    output$predictionD <- renderPrint({daughterHeight(input$heightM,input$heightF,input$units)})
  }
)