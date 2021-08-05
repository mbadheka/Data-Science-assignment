
pollutantvector <- function(directory, pollutant, id = 1:332, p) {
  i_data <- data.frame()
  
  
  for (i in id) {
    
    x <- paste(getwd(), "/", directory, "/", sprintf("%03d", i ), ".csv", sep = "")
    
    y <- read.csv(x)
    
    i_data <- rbind(i_data, y)
    
  }
  
  p_Column <- i_data[, pollutant]
  
  column <- p_Column[!is.na(p_Column)]
  
  returnValue(column[column > p])
}




