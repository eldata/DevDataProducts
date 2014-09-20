#  ui.R script:
library(shiny)
library(ggplot2)
library(knitr)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Monte Carlo Simulator"),
        
        # Sidebar with a slider input for the number of bins
        sidebarLayout(
                sidebarPanel(
                        sliderInput("n",
                                    "Number of Observations (Days)",
                                    min = 1,
                                    max = 10000,
                                    value = 1260),
                        sliderInput("mu",
                                    "Expected Annual Return (Percent)",
                                    min = 1,
                                    max = 100,
                                    value =10),
                        sliderInput("sd",
                                    "Volatility (Percent)",
                                    min = 1,
                                    max = 100,
                                    value = 15),
                        textOutput("text1"),  #added dynamic text explaination
                        textOutput("text2"),
                        textOutput("text3")
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                        plotOutput("distPlot")
                                                
                )
        )
))
