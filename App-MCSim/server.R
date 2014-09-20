# server.R script:
library(shiny)
library(ggplot2)
library(knitr)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        #sliderValues <- reactive({
        
        Returns <- function(n, mu, sd) {(mu/100)*(1/252) + (sd/100)*(rnorm(n))*sqrt(1/252)} #formula to calculate annualized Returns
        
        # Expression that generates a histogram. The expression is
        # wrapped in a call to renderPlot to indicate that:
        #
        #  1) It is "reactive" and therefore should re-execute automatically
        #     when inputs change
        #  2) Its output type is a plot
                
        output$distPlot <- renderPlot({
                dist <- Returns(input$n, input$mu, input$sd)
                hist(dist, breaks=60, col="dark blue", border="white",
                     main="*Eventually histogram ends up normally distributed(bell-shaped).",
                     xlab="Simulated Annual Returns")
                
        })
        output$text1 <- renderText({
                paste(input$n, " Observations in our simulation")})
        output$text2 <- renderText({
                paste(input$mu, "Percent Annual Return to simulate")})
        output$text3 <- renderText({
                paste(input$sd, "Percent volatility to simulate")
                })
        
        }
)
