#1. Write a function that returns the odd (1, 3, 5, etc.) rows of any dataframe passed as an argument.

iris <- read.csv("iris.csv")

odd_head <- function(file) {
  file.new <- file[seq(1, nrow(file), 2),]
  return(file.new)
}


#2. Repeat a subset of last week’s exercise, but write functions to accomplish these tasks.
#• return the number of observations for a given species included in the data set
obs <- function() {
  input <- readline("which species? (setosa, versicolor, virginica)  ")
  nrow(iris[iris$Species==input,])
}

#• return a dataframe for flowers with Sepal.Width greater than a value specified by the function user
greater <- function(n) {
iris[iris$Sepal.Length > n,]
}
paste("ggg",5)

#• write the data for a given species to a comma-delimited file with the given species name as the file name;
#Hint: look at paste() to add the .csv extension to your file in the for-loop.
make_csv <- function() {
  input <- readline("which species? (setosa, versicolor, virginica)  ")
  write.csv(iris[iris$Species == input,] , paste(input,".csv"))
}

