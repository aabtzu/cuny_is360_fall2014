library(dplyr)
library(tidyr)

# 1. some questions of the data
# 1a. how many people voted ?
# 1b. who will win ? 
# 1c. how close was vote in percentage by age group ?


# 2. create a "messy data frame"
col0= c("Yes","No")
col1 = c(80100,35900)
col2 = c(143000,214800)
col3 = c(99400,43000)
col4 = c(150400,207000)

messy_names = c("Vote",
                "Edinburgh 16-24",
                "Edinburgh 25+",
                "Glasgow 16-24",
                "Glasgow 25+")
messy_df = data_frame(col0,col1,col2,col3,col4)
colnames(messy_df) = messy_names

print("#2 put the data into a messy df")
print(messy_df)


#3 convert to a tidy data frame

# first get one group by City-Age
tidy_df = messy_df %>% gather("CityAge","Votes", -Vote)
# next split the City-Age field into 2
tidy2_df = tidy_df %>% separate(CityAge, into=c("City","Age") ,sep=" ")

print("#3 convert to a tidy df")
print(tidy2_df)

#4 answer the questions from #1

print("#4a how many voted")
print (sum(tidy2_df$Votes))

print("#4b who will win ?")
groupYesNo = group_by(tidy2_df, Vote)
print(summarise(groupYesNo, sum(Votes)))

print("#4c how close was vote in percentage by age group ?")
#groupYesNoAgePct = group_by(tidy2_df, Vote, Age)
#print(summarise(groupYesNoAgePct, sum(Votes)))
pctByAge_df = tidy2_df %>%
  group_by(Age, Vote) %>%
  summarise(YesNoVotesByAge = sum(Votes)) %>%
  group_by(Age) %>%
  mutate(VotesByAge = sum(YesNoVotesByAge)) %>%
  mutate(PctByAge = YesNoVotesByAge/VotesByAge) 

print(pctByAge_df)
