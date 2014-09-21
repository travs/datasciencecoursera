library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Population of Newfoundland"),
  
  sidebarPanel(
    p("Click on a gender, select a year on the slider and watch the plot change!"),
    p("The graph on the right represents the population of Newfoundland across age groups."),
    radioButtons("gen", "Gender:",
                 choices=list("Male" = "Male",
                      "Female" = "Female",
                      "Total" = "Total"),
                 selected="Total"
                 ),
    sliderInput("y",
                "Year:",
                value = 2012,
                min = 2010,
                max = 2012,
                format = "####")
  ),
  
  mainPanel(
    plotOutput("pop_plot")
  )
))