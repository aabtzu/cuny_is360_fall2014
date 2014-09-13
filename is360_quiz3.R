#1. Write a loop that calculates 12-factorial.

n = 12
nfact = 1
for (i in 1:12) {
  nfact = nfact * i
}
print("#1. Write a loop that calculates 12-factorial.")
print (nfact)

#2. Use a loop to calculate the final balance, rounded to the nearest cent, in an account that earns 3.24% interest compounded monthly after six years if the original balance is $1,500.
rate = 0.0324 
balance = 1500
years = 6
periods = years * 12 # number of months
for (i in 1:periods) {
  balance = balance * ( 1 + rate /12 )
}

print("#2. Use a loop to calculate the final balance, rounded to the nearest cent, in an account that earns 3.24% interest compounded monthly after six years if the original balance is $1,500.")
print (balance)
  
#3. Create a numeric vector of length 20 and then write code to calculate the sum of every third element of the vector you have created.
vec = (1:20)

total = sum(vec[vec %% 3 == 0]) # non loop implementation

# loop implementation
total3 = 0
for (i in 1:length(vec)) {
  if (i %% 3 == 0) {
    total3 = total3 + i
  }
}

print("#3. Create a numeric vector of length 20 and then write code to calculate the sum of every third element of the vector you have created.")
print (total)
print (total3)


#4. Use a for loop to calculate Σ𝑥𝑖10𝑖=1 for the value 𝑥=2.
total = 0
x = 2
for (i in 1:10) {
  total = total + x^i
}

print ("#4. Use a for loop to calculate for the summation for value x=2")
print (total)

#5. Use a while loop to accomplish the same task as in the previous exercise.
total = 0
x = 2
i = 0
while (i<10) {
  i = i + 1
  total = total + x^i
}

print ("#5. Use a while loop to accomplish the same task as in the previous exercise.")
print (total)

#6. Solve the problem from the previous two exercises without using a loop.
i = c(1:10)
total = sum(x^i)
print ("#6. Solve the problem from the previous two exercises without using a loop.")
print(total)

#7. Show how to create a numeric vector that contains the sequence from 20 to 50 by 5.
s = seq(20,50,5)
print ("#7. Show how to create a numeric vector that contains the sequence from 20 to 50 by 5.")
print(s)

#8. Show how to create a character vector of length 10 with the same word, example, ten times.
word = "example"
n = 10
word_vec = rep(word,n)

print ("#8. Show how to create a character vector of length 10 with the same word")
print (word_vec)

#9. Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.
quadraticEq = function (a,b,c) {
  discriminant = (b^2) - (4 * a * c)
  if (discriminant >= 0) {
    ansPos = (-b + sqrt(discriminant)) / ( 2 * a)
    ansNeg = (-b - sqrt(discriminant)) / ( 2 * a)
  }
  else {
    ansPos = NaN
  }
  return(ansPos)
}

#9. Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.
a = 16
b = 4
c = -1
print ("#9. Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.")
print(quadraticEq(a,b,c))

#10. Write a function that takes a numeric vector and calculates the mean of the observations in the vector.
calc_mean = function(vec) {
  total = sum(vec)
  n = length(vec)
  return (total/n)
}
vec = c(1:20)

print("#10. Write a function that takes a numeric vector and calculates the mean of the observations in the vector.")
print(calc_mean(vec))


#11. Modify your function in the previous question so that it can handle a numeric vector with missing values.
calc_mean_nan = function(vec) {
  total = sum(vec, na.rm = TRUE)
  n = length(vec) - sum(is.na(vec))
  return (total/n)
}
vec = c(1:19, NaN)

print("#11. Modify your function in the previous question so that it can handle a numeric vector with missing values.")
print(calc_mean(vec))
print(calc_mean_nan(vec))

#12. Write a function that takes two numeric input values and calculates the greatest common divisor of the two numbers.
greatest_common_divisor = function(a,b) {
  
  divisor = abs(min(a,b))
  found = FALSE
  
  while (!found) {
    if ((a %% divisor == 0) && (b %% divisor == 0)) {
      found = TRUE
    }
    else {
      divisor = divisor -1
    }
      
  }
  return (divisor)
}
print("#12. Write a function that takes two numeric input values and calculates the greatest common divisor of the two numbers.")
print(greatest_common_divisor(5,7))

#13. Write a function that takes two numeric inputs x and y and calculates 𝑥2𝑦+2𝑥𝑦−𝑥𝑦2
my_function = function(x,y) {
  
  ans = x^2 * y + 2 * x * y - x * y^2
  return(ans)
}

print("#13. Write a function that takes two numeric inputs x and y and calculates the function")
print(my_function(4,5))
