## Create tabpanel objects here
## they should be named tP<i> where <i> is the
## index of the order they are created.
tP1 <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      helpText("Use the sliders to adjust the acres 
               of construction in each reach in each 
               year."),
      sliderInput("tpGPbuild", "Gavin's Point", min  = 0, max = 400, step = 5, value = 45),
      sliderInput("tpLCLbuild", "Lewis and Clark Lake", min = 0, max = 400, step = 5, value = 15),
      sliderInput("tpFRbuild", "Fort Randall", min = 0, max = 400, step = 5, value = 15),
      sliderInput("tpGRbuild", "Garrison", min = 0, max = 400, step = 5, value = 15),
      sliderInput("tpFPbuild", "Fort Peck", min = 0, max = 400, step = 5, value = 15),
      textOutput("tpAnnualCost", inline=TRUE),
      actionButton("tpNextYear", "Next Year"),
    ),
    mainPanel(
      fluidRow(
        column(6,plotOutput("tp1popByTime")),
        column(6,plotOutput("tp1ratesByPop"))
      )
    )
  )
  
) # end fluidpage
