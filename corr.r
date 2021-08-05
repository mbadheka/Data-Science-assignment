corr <- function(directory, threshold = 0) {
  
  x <- complete(directory)
  x = x[x$nobs > threshold, ]
  
  files <- list.files(directory)
  correlation <- c()
  
  
  for (i in x$id) {
    
    
    y <- paste(getwd(), "/", directory, "/", sprintf("%03d", i ), ".csv", sep = "")
    
    table <- read.csv(y)
    
    table <- table[complete.cases(table), ]  
    
    correlation <- c(correlation,cor(table$nitrate,table$sulfate))    
  }
  
  print(correlation)
}



