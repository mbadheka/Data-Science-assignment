complete <- function(directory, id = 1:332)
{
  
  nobs <- data.frame() 
  for (i in id)
  {
    
    x <- paste(getwd(), "/", directory, "/", sprintf("%03d", i ), ".csv", sep = "")
    y<- read.csv(x)
    y <- sum(complete.cases(y))
    nobs1 <- data.frame(i,y)
    nobs <-rbind(nobs,nobs1)
  }
  colnames(nobs) <- c("id", "nobs")
  
  returnValue(nobs)
}


#trial 2
# complete <- function(directory, id = 1:332)
# {
#
#   nobs = numeric(0) #numeric is predifined funcation like double
#   for (i in id)
#   {
#
#     x <- paste(getwd(), "/", directory, "/", sprintf("%03d", i ), ".csv", sep = "")
#     nobs <- sum(complete.cases(x))
#   }
#   return(data.frame(id, nobs))
#}



#TRIAL 1
# complete <- function(directory, id = 1:332)
# 
# {
#   files_full <- list.files(directory, full.names = TRUE)  # getting list of files
#   files_need <- files_full[id] # filter out files which is not needed )
#   output <- data.frame(id = id, nobs = 0)
#   for (i in id)
#   {
#     x <- read.csv(files_need[i]) # read the data
#     nobs <- sum(complete.cases(x)) #  number of complete cases (nobs)
#     output[i, "nobs"] <- nobs
#   }
#   output
# }