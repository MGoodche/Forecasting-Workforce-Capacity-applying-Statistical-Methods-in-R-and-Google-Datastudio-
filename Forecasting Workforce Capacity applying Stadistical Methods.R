forecast <- function(week) {
  #Variables
  #The first step is to categorize all the tickets and calculate the cycle time (the actual working time) of each of the categories
  i2 <- 310 # Cycle Time P2 Incidents
  i3 <- 51  # Cycle Time P3 Incidents
  i4 <- 1141 # Cycle Time P4 Incidents
  i5 <- 185 # Cycle Time P5 Incidents
  ir1 <- 360 # Cycle Time Requests Type 1
  ir2 <- 540 # Cycle Time Requests Type 3
  ir3 <- 450 # Cycle Time Requests Type 3
  available_time <- 7200
  #Libraries2
  library (forecast)
  library(tsintermittent)
  
  #The second step is apply data cleaning techniques and analyze which forecasting model best suits for each demand.
  #The third step is calculate the number of employees needed to cover te demand
  # Forecast Model P2
  setwd("C:/AutomationCode")
  p2 <- read.table("P2.txt", header = TRUE)
  fit2 <- auto.arima(p2)
  forec2 <- forecast(fit2,2)
  forec2

  resultotal <- forecasting(1,2,3,4,5,6,7,8)
  resultotalfte <- forecastingfte(1,2,3,4,5,6,7,8)
  resultrequestfte <- forecastingrequestfte(1,2,3,4,5,6,7,8)
  resultrequest  <- forecastingrequest (1,2,3,4,5,6,7,8)
 
  
  print(paste('The total needed people to resolve all incidents in week', week, 'are',resultotal))
  print(paste('The total needed people to resolve all requests in week', week, 'are', resultrequest))
  print(paste('The total needed people to resolve all Second Level incidents in week', week, 'are',resultsInc2nd))
  print(paste('The total needed people to resolve all Second Level requests in week', week, 'are',resultrequest2nd))
  print(paste('The total needed FTE to resolve all requests in week', week, 'are', resultrequestfte))
  print(paste('The total needed FTE to resolve all incidents in week', week, 'are', resultotalfte))
  print(paste('The total needed FTE to resolve all Second Level incidents in week', week, 'are', resultsInc2ndfte))
  print(paste('The total needed FTE to resolve all Second Level requests in week', week, 'are', resultrequestfte2nd))
  }
