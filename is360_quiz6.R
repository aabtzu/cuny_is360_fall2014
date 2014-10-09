# 1.  In the mass package, there is a dataset named describe what is contained in the caith dataset.

# 2. Describe what is stored in variable EyeColor
require(MASS)
EyeColor <- rowSums(caith)

# 3. Create a new variable called HairColor that is colors across different eye colors.
HairColor <- colSums(caith)

# 4. Create a histogram of eye colors.  What is the most common eye color
barplot(EyeColor)
# the most common EyeColor is "medium" 

# 5. Describe what the following line of code does:
caitha <- as.matrix(caith)
# turns the data frame into a matrix

# 6. Describe what the following line of code does:
barplot(t(as.matrix(caith)))
# makes a stacked bar plot

# 7. Modify the barplot function in #6 so that it produced a plot similar to that shown below:
barplot(t(as.matrix(caith)),beside=TRUE)
# makes a clustered bar plot

# 8. relationship between hair/eye color ? 
# dark eyes appear to have dark hair
# black hair and dark eyes
# medium eyes appear to have medium hair
corresp(caith)
biplot(corresp(caith, nf = 2))





