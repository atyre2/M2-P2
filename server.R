library(shiny)
reaches <- c("Fort Peck","Garrison", "Fort Randall", "Lewis & Clark", "Gavin's Point")


initModel <- function(){
  # creates initial dataframe
  df <- data.frame(Rep = 0, Year = startYear,
                   Reach=reaches,
                   ESH = c(15, 45, 5, 102, 165),
                   N = c(0, 287, 6, 152, 74),
                   Flow = c(9.9, 23.9, 30.5, NA_real_, 31.6),
                   Constr = rep(NA_real_, times=5)
                   )
  df
}

shinyServer(function(input, output, session) {
  startYear <- 2010
  currentState <- eventReactive(input$tpNextYear,{
    # this is where the model goes
    # updates prevState
    # return value is a data.frame with columns
    # Rep, Reach, Year, N, ESH, Flow, Const
    if(!exists("prevState")) {
      df <- initModel()
      # read in current construction state
      df$Constr <- c(input$tpFPbuild,
                     input$tpGRbuild,
                     input$tpFRbuild,
                     input$tpLCLbuild,
                     input$tpGPbuild)
    }
    
    # calculate available area
    # project population size to t+1 depends on area_t
    # project area to t+1
    
  })
  
  prevState <- isolate(currentState()) # save the current state
  
})
