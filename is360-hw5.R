#Your task: Using R’s dplyr package, 
#write R code that shows the average mpg and average weight 
#based on # of cylinders and whether there is automatic transmission; 

#show only for cars that get more than 20 mpg.

# Method 1: "correct interpretation" of the instructions
# first filter cars that are more than 20 mpg
car1 = filter(mtcars, mpg > 20)

# group by 
group1 = group_by(car1, cyl, am)

# compute group averages
answer1 = summarise(group1, avg_mpg = mean(mpg), avg_wt = mean(wt))

# display result (this is different than what is in assignment sample)
print("method 1: cars that get > 20mpg")
print(answer1)

# Method 2: show the groups where the average is > 20 mpg
group2 = group_by(mtcars, cyl, am)
summary2 = summarise(group2, avg_mpg = mean(mpg), avg_wt = mean(wt))
answer2 = filter(summary2, avg_mpg > 20)

# display result (this is same as assignment sample)
print("")
print("method 2: avg of group > 20mpg")
print(answer2)
