#1. Use R to determine how many numbers from 1 to 1000 are not divisible by any of 3,7, and 11.

# only need to find how many, not which ones
num = 0
n = 1000
divisors = c(3,7,11)
for (i in 1:n) {
  # divide each number by all 3 divisors and get remainder
  # if all the remainders are not zero then increment counter
  if (all((i %%divisors) != 0)) {
    num = num + 1
  }
}
  
# completely vectorized i.e. no loops
# vectorized operations in R are much faster than loops

# create a matrix of 3 rows each w/ 1 to 1000
r = c(1:1000)
mat = matrix(r,3,1000, byrow = TRUE)

# see if remainders are not zero
dd = mat %% divisors != 0
# count number where all 3 are not zero
num2 = sum(colSums(dd) == 3)

print("#1. Use R to determine how many numbers from 1 to 1000 are not divisible by any of 3,7, and 11.")
print(num)
print (num2)

#2. Write a function that takes a vector as input and returns the number of missing values in the vector.
num_missing = function(vec) {
  
  n = sum(is.na(vec))
  return(n)
}

print("#2. Write a function that takes a vector as input and returns the number of missing values in the vector.")
v = c(1,2,3,4)
print (num_missing(v))

v = c(1,NaN,2,3,NaN,4)
print (num_missing(v))

#3. Write a function that takes a data frame as input and returns a named vector with the number of missing 
#values in each column of the data frame. (The names of the entries should be the corresponding column 
#names of the data frame.) You may use the function from the previous question as part of your solution.

df = mtcars # use a built in data frame within R 32 rows x 11 cols

# put in some random NaNs randomly (this is not part of assignment)
r = nrow(df)
c = ncol(df)
for (i in 1:c) {
   n = round(runif(1) * r) # number of randoms to introduce
   irand = round(runif(n) * r)
   df[irand,i] = NaN
}

df_num_missing = function(df) {
  
  # implementation using loop
  missing_vec = NULL
  c = ncol(df)
  for (i in 1:c) {
    col_name = colnames(df)[i]
    n_missing = num_missing(df[col_name])
    missing_vec[col_name] = n_missing
  }
  return (missing_vec)
  
}

print ("#3 function that gives named vector of number of missing values in each col")
print (df_num_missing(df))

print ("#3 non-loop non-function one line implementation")
print (colSums(is.na(df)))
