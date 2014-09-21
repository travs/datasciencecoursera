library(shiny)
library(ggplot2)
library(grid)

data <- read.csv("data/database_var.csv")

shinyServer(function(input,output){
  #selects the relevant data based on user input (year and gender)
  relevant <- reactive({
    a <- data[data$Gender==input$gen,]
    a <- (a[a$Year==input$y,])
    a <- a[,7:23]
    
    ages <- colnames(a)
    pops <- colSums(a, na.rm=TRUE)
    frame <- data.frame(cbind(ages, pops))
    rownames(frame) <- NULL
    return(frame)
  })
  
  output$pop_plot <- renderPlot({
    dat <- relevant()
    graph <- qplot(x=ages, 
                   y=pops, 
                   data=dat, 
                   geom="bar", 
                   stat="identity", 
                   position="dodge") + 
                   theme(axis.line=element_blank(),
                   axis.text.x=element_blank(),
                   axis.text.y=element_blank(),
                   axis.ticks=element_blank(),
                   legend.position="none",
                   panel.background=element_blank(),
                   panel.border=element_blank(),
                   panel.grid.major=element_blank(),
                   panel.grid.minor=element_blank(),
                   plot.background=element_blank()) +
                   labs(x="Age", y="Population", title="Age distribution")
    return(graph)
  })
  
})