#1. Read in the week-4-price-data.csv and week-4-make-model-data.csv files as data frames and then merge them by the ModelNumber key. Leave the “all” parameters as their defaults. How many observations end up in the result? Is this what you would have expected?
df_price = read.csv("week-4-price-data.csv")
df_model = read.csv("week-4-make-model-data.csv")

df_merged = merge(df_price, df_model, by = "ModelNumber")

print("#1. How many observations end up in the result?")
print(nrow(df_merged))
#  Is this what you would have expected?
# Yes, because one row in df_price has a unknown model number > 23120

#2. Use the data sets from the previous question, but this time merge them so that the rows from the price-data table all appear, even if there is no match in the make-model table.
df_merged2 = merge(df_price, df_model, by = "ModelNumber", all=TRUE)
print("#2. How many observations end up in the result?")
print(nrow(df_merged2))

#3. Take your result from question 2 and subset it so that only the 2010 vehicles are included.
df_subset3 = subset(df_merged2, Year == 2010)

print("#3. Take your result from question 2 and subset it so that only the 2010 vehicles are included.")
print(nrow(df_subset3))

#4. Take your result from question 2 and subset it so that only the red cars that cost more than $10,000 are included.
df_subset4 = subset(df_merged2, Color == 'Red' & Price > 10000)

print("#4. Take your result from question 2 and subset it so that only the red cars that cost more than $10,000 are included.")
print(nrow(df_subset4))

#5. Take your result from question 4 and subset it so that the ModelNumber and Color columns are removed.
df_subset5 = subset(df_subset4, select= -c(ModelNumber,Color))
print("#5. Take your result from question 4 and subset it so that the ModelNumber and Color columns are removed.")
print(colnames(df_subset5))

#6. Write a function that takes as input a character vector and returns a numeric vector with the numbers of characters in each of the elements in the original vector.
count_char = function(char_vec) {
  
  cc = sapply(char_vec,nchar, USE.NAMES=FALSE)
  return(cc)
  
}

sample_vec = c("foo","fooman","foomanchu")
cc = count_char(sample_vec)

# or the super easy way
cc2 = nchar(sample_vec)

print ("#6. Write a function that takes as input a character vector and returns a numeric vector with the numbers of characters in each of the elements in the original vector.")
print (sample_vec)
print (cc)
print (cc2)
