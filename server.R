
# Choose 'USArrests' dataset in the datasets package
# which is preloaded.
library(shiny)
library(datasets)
library(dplyr)

# Define a server for the Shiny app
function(input, output) {
  
 output$crimePlot <- renderPlot({

    # Render a barplot
    barplot(USArrests[,input$crime], 
            main=input$crime,
            names.arg = row.names(USArrests),
            las = 2,
            ylab="Arrests per 100,000 residents")
  })
}
