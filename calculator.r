add <- function(x, y) {
  return(x + y)
}
subtract <- function(x, y) {
  return(x - y)
}
multiply <- function(x, y) {
  return(x * y)
}
divide <- function(x, y) {
  return(x / y)
}
factors <- function(x) {
  print(paste("The factors of",x,"are:"))
  for(i in 1:x) {
    if((x %% i) == 0)
    {
      print(i)
    }
  }}

prime1<-function(x){
  if(x > 1) {
    # check for factors
    flag = 1
    for(i in 2:(x-1)) {
      if ((x %% i) == 0) {
        flag = 0
        break
      }
    }
  } 
  if(x == 2)    flag = 1
  if(flag == 1) {
    print(paste(x,"is a prime number"))
  } else {
    print(paste(x,"is not a prime number"))
  }
}

print("Simple R Calculator - Please select operation :")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
print("5.Factors")
print("6.Prime1")
choice = as.integer(readline(prompt="Enter choice[1/2/3/4/5/6]: "))
if (choice == 5 | choice == 6) {
  num1 = as.integer(readline(prompt="Enter number: "))
} else if (choice >=1 && choice <5) {
  num1 = as.integer(readline(prompt="Enter first number: "))
  num2 = as.integer(readline(prompt="Enter second number: "))
} else{
  print("Please select above option")
}

result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2), factors(num1), prime1(num1))
if (choice >=1 && choice <5){
  operator <- switch(choice,"+","-","*","/")
  print(paste(num1, operator, num2, "=", result))}




