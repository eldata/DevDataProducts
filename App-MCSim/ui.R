#  ui.R script:
library(shiny)
library(ggplot2)
library(markdown)

# Define UI for application that draws a histogram
# Initialize User Interface Code
shinyUI(
        navbarPage(
                "A Basic Monte Carlo Simulator",
                windowTitle = "MC SIM",
                collapsable = FALSE,
                fluid       = TRUE,
                inverse     = TRUE,
                theme       = NULL,

                
                # Homepage and Simulator
                tabPanel(       
                        "The Simulator",
                                                                
                                sidebarLayout(
                        
                                # Slider Inputs for Dynamic Histogram
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
                                    "Expected Annual Volatility (Percent)",
                                    min = 1,
                                    max = 100,
                                    value = 15),
                                 textOutput("text1"),  #added dynamic text explaination
                                 textOutput("text2"),
                                 textOutput("text3")
                                 ),
                                                                
                                
                                # Outputs:     Show a plot of the generated distributions & text/numerical
                                #              readouts of the slider inputs for better visibility
                                
                                mainPanel(
                                        plotOutput("distPlot")
                                )
                )),
                
                # About
                tabPanel(
                        "About",
                        includeMarkdown("About.md")
                ),   
                
                # Tutorial
                tabPanel(
                        "Tutorial",
                        includeMarkdown("Tutorial.md")
                        )
)
)

                   
              
         
     

