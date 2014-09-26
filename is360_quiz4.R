#1. Read about the OSEMN data science process workflow in “A Taxonomy of Data Science”, http://www.dataists.com/2010/09/a-taxonomy-of-data-science/. Then, without consulting your reading or notes, write a one sentence description for each of the five process steps.

#2. Which do you think will yield a better program: Well designed function interfaces and data structures, decently implemented, or decently designed function interfaces and data structures, Well implemented? Briefly explain your reasoning.

#3. Display the day of the year for the current date. For example, on February 1st, the value returned should be 32. If you want, use a third party package such as chron or lubridate.
today = Sys.Date()
day_of_year = as.POSIXlt(as.character(today))$yday + 1 # using built in stuff in R

library(lubridate)
lubridate_day_of_year = yday(as.character(today)) # use lubridate

print("#3. Display the day of the year for the current date.")
print(day_of_year) # POSIX
print(lubridate_day_of_year) # lubridate 

#4. Give an example of when you would choose the POSIXlt date class, versus when you would choose the POSIXct date class.

#5. The hero of James Gleick’s book, The Information, is pioneer data scientist Claude Shannon. Write R code that answers the question, “How long ago was Claude Shannon born?” (There is clearly some room for interpretation in your answer here).
date_born = "1916-04-30"
lub_date_born = ymd(date_born)
lub_today = ymd(today)
age = lub_today- lub_date_born 

print ("#5. How long ago was Claude Shannon born?")
print(age)

#6. Suppose you have a data frame where one column gives the month (in numeric format), the next gives the day, and the third column gives the year. Use R to create such a data frame (by hand is fine) and then add a fourth column with the date in date format. Use str() on the data frame to check your work.
d = c(1:12)
m = c(1:12)
y = c(2001:2012)
df = data.frame(d,m,y)
df['date'] = ISOdate(df$y, df$m, df$d)

print ("#6. Use R to create such a data frame (by hand is fine) and then add a fourth column with the date in date format.")
print (df)

#7. Illustrate the code necessary to take a string of MM-DD-YYYY format and convert it to a date.
date_str = "12-02-1970" # my birthday
lub_date = mdy(date_str)

print("#7. Illustrate the code necessary to take a string of MM-DD-YYYY format and convert it to a date.")
print (lub_date)

#8. Illustrate the code necessary to take a date and extract the month of the date.
print("#8. Illustrate the code necessary to take a date and extract the month of the date.")
print (month(lub_date))

#9. Create a sequence of all of the dates from January 1, 2005, to December 31, 2014.
start_date = ISOdate(2005,01,01)
end_date = ISOdate(2014,12,31)
date_list = seq(start_date, end_date, by ="day")
print("#9. Create a sequence of all of the dates from January 1, 2005, to December 31, 2014.")
print (range(date_list))
print (length(date_list))

#10. When you’re creating a data frame from a set of vectors, what argument can you give the data.frame() function to instruct it to not automatically convert character vectors into factors?
names = c("foo","man","chu")
df = data.frame(names, stringsAsFactors=FALSE)

print ("#10. When you’re creating a data frame from a set of vectors, what argument can you give the data.frame() function to instruct it to not automatically convert character vectors into factors?")
print (df$names)
