library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    sidebarLayout(position = "right",
        sidebarPanel( "sidebar panel"),
        mainPanel("main panel")
    )
})