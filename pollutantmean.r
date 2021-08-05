pollutantmean <- function(directory, pollutant, id = 1:332){
  
  concatenatedTable <- data.frame()
  
  for (i in id) {
    
    datafilepath <- paste(getwd(), "/", directory, "/", sprintf("%03d", i ), ".csv", sep = "")
    
    datatable <- read.csv(datafilepath)
    
    concatenatedTable <- rbind(concatenatedTable, datatable)
    
    pollutantColumn <- concatenatedTable[, pollutant]
    
  }
  
  returnValue(mean(pollutantColumn, na.rm = TRUE))
}




# pollutantmean <- function(directory, pollutant, id = 1:332) 
# {
#   means <- c()
#   
#   for(i in id) 
#   {
#     x <- paste(getwd(), "/", directory, "/", sprintf("%03d", i ), ".csv", sep = "") #%03 for decimal file number 
#     
#     
#     malhar <- read.csv(x) 
#     
#     
#     malhar_1 <- malhar[pollutant] 
#     
#     
#     means <- c(means, malhar_1[!is.na(malhar_1)]) 
#   }
#   
#   mean(means) 
# }
# 


