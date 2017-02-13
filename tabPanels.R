## Create tabpanel objects here
## they should be named tP<i> where <i> is the
## index of the order they are created.
tP1 <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput("tp1", "Initial population size", min  = 0, max = 20, step = 0.5, value = 15),
      sliderInput("tp1b0", "Per capita birth rate", min = 0, max = 1, step = 0.01, value = 0.2),
      sliderInput("tp1d0", "Per capita death rate", min = 0, max = 1, step = 0.01, value = 0.25)
    ),
    mainPanel(
      fluidRow(
        column(6,plotOutput("tp1popByTime")),
        column(6,plotOutput("tp1ratesByPop"))
      )
    )
  )
  
) # end fluidpage
