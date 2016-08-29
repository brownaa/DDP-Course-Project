library(shiny)
library(MASS)
require(dplyr)

data(mtcars)
mycars = mtcars
mycars <- mutate(mycars, am = as.factor(am), cyl = as.factor(cyl), vs = as.factor(vs),
                 gear = as.factor(gear), carb = as.factor(carb))
levels(mycars$am) <- c("Automatic", "Manual")
levels(mycars$vs) <- c("V", "Straight")

# fit = lm(mpg ~ . , data = mycars)
# 
# summary(fit)$coef
# 
# step = stepAIC(fit, direction = "both")
# step$anova

newfit = lm(mpg ~ cyl + hp + wt + am, data = mycars)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    
    
    newdata <- reactive({
        dat = rbind(mycars,
                    data.frame(mpg = NA, cyl = input$cyl,
                               disp = NA, hp = input$hp,
                               drat = NA, wt = input$wt / 1000,
                               qsec = NA, vs = NA, am = input$am,
                               gear = NA, carb = NA))
        dat = dat[nrow(dat),]
    })

    output$new.data <- renderTable({
        print(newdata())
    })    
    
    output$newmpg <- renderText({
        predict.lm(newfit, newdata())
    })
    
    
    # sidebarLayout(position = "right",
    #               sidebarPanel( "sidebar panel"),
    #               mainPanel("main panel",
    #                         output$text <- renderText(paste("Your estimated MPG is:", newmpg))
    #               )
    # )
    
})