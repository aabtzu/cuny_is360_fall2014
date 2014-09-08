# example solutions to week 2 quiz

# 1. Create a vector that contains 20 numbers. 
# (You may choose whatever numbers you like, but make sure there are some duplicates.)

numVector = c(1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2)

#2. Use R to convert the vector from question 1 into a character vector.
charVector = as.character(numVector)

#3. Use R to convert the vector from question 1 into a vector of factors.
factorVector = as.factor(numVector)

#4. Use R to show how many levels the vector in the previous question has.
numLevels = length(levels(factorVector))

#5. Use R to create a vector that takes the vector from question 1 and performs on it the formula 3𝑥2 − 4𝑥 + 1.
polynomialVector = 3 * numVector^2 - 4 * numVector + 1

#6. Create a named list. That is, create a list with several elements that are each able to be referenced by name.
namedList = list(foo=1, man=2, chu=3)

#7. Create a data frame with four columns – one each character, factor (with three levels), numeric, and date. 
#Your data frame should have at least 10 observations (rows).
a = c('a','b','c','d','e','f','g','h','i','j') # 10 characters
b = c(1,1,1,2,2,2,3,3,3,3) # 3 levels
c = runif(10) # 10 random numbers
d = as.Date("2014-01-01") + c(1:10) # 10 dates
df = data.frame(a, b, c, d) # create the data frame

#8. Illustrate how to add a row with a value for the factor column that isn’t already in the list of levels. 
#(Note: You do not need to accomplish this with a single line of code.)
a2 = "k"
b2 = 4
c2 = runif(1)
d2 = as.Date("2014-01-01")
df2 = data.frame(a=a2, b=b2, c=c2, d=d2) # create the new data frame
dfNew = rbind(df,df2)

#9. Show the code that would read in a CSV file called temperatures.csv from the current working directory.
df = read.table(file = "temperatures.csv", header = TRUE, sep = ",")

#10. Show the code that would read in a TSV (tab-separated) file called measurements.txt from a directory other 
#than the working directory on your local machine.
df = read.table(file = "c:/data/measurements.txt", header = TRUE, sep = "\t")

#11. Show the code that will read in a delimited file with a pipe separator (the “|” symbol) from a website 
#location. (You may make up an appropriate URL.)
df = read.table(file = "http://foomanchu.com/pipe.psv", header = TRUE, sep = "|")
