# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(shiny)
library(datasets)
library(dplyr)

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Violent Crime Rates by US State"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("crime", "Crime:", 
                  choices=colnames(USArrests)),
      hr(),
      helpText("Data from World Almanac and Book of facts 1975")
    ),
    
    # Create a barplot place
    mainPanel(
      plotOutput("crimePlot")  
    )
    
  )
)
