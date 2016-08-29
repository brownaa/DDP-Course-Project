library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    titlePanel("Car MPG Estimation"),

    sidebarLayout(
        sidebarPanel(
            h3("Vehicle Specs"),
            p("This form can be used to estimate your MPG or compare your MPG to the expected MPG based on other cars with similar specifications.", style = "font-family: 'times'; font-si16pt"),
            hr(),
            br(),
            sliderInput("cyl", label = h4("Number of Cylinders"), 2, 8,
                        value = 6, step = 2),
            numericInput("hp", label = h4("Horsepower"), value = 200),
            sliderInput("wt", label = h4("Weight (lb)"), min = 1500, 
                        max = 5500, value = 1500),
            selectInput("am", label = h4("Automatic or Manual Transmission"), 
                        choices = list("Automatic" = "Automatic", "Manual" = "Manual"), 
                        selected = "Automatic")
            # fluidRow(
            #     column(3,
            #            h3("Buttons"),
            #            actionButton("action", label = "Action"),
            #            br(),
            #            br(), 
            #            submitButton("Submit")))
        ),
        
        mainPanel(
            h3("Result"),
            br(),
            h4("Based on the data you provided, the predicted miles per gallon will be:"),
            br(),
            h1(textOutput("newmpg"))
        )
    )
))
