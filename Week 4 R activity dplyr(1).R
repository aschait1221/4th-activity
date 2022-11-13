#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: HairEyeColor
#and give the dataset a new name of your choice
View(HairEyeColor)

#See the top rows of the data
#TASK: Write the function to see the top rows of the data
head(HairEyeColor)

#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr
library(dplyr)
library(tidyverse)


#Let's just see the hair and sex columns
#Task: Write the function to 'select' just the hair and sex columns 
#(hint: use the 'select' function)

attach(HairEyeColor)
hc <- HairEyeColor %>%
  select(Sex, Hair)
rename(HairEyeColor, gender=Sex)
#Let's name the dataset with just the two columns, Hair and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name
hc <- HairEyeColor %>%
  select(Sex, Hair)
rename(HairEyeColor, longhair=Hair)

#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)
hc <- HairEyeColor %>%
  select(Eye, Hair)

#Let's rename a column name
#TASK: Write the function that renames 'sex' to 'gender'

hc <- HairEyeColor %>%
  select(Sex, Hair)
rename(HairEyeColor, gender=Sex)
#Let's make a new dataset with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column
hc <- HairEyeColor %>%
  select(Hair,Eye, Sex)
rename(HairEyeColor, gender=Sex)
View(rename_(Hair,Eye,Sex))

#Let's 'filter' just the females from our dataset
#TASK: Write the function that includes only rows that are 'female'
data()
View(HairEyeColor)
HairEyeColor %>%
  select(Sex) %>%
  filter(sex == "female") %>%
  na.omit()

#Let's 'group' our data by gender
#TASK: Write the function to group the data by gender (hint: group_by)
data_group <- data %>%
  group_by(hair,Sex) %>%
  dplyr::summarise(gr_sum =sum(values)) %>%
  as.data.frame()

#Let's see how many students were examined in the dataset (total the frequency)
#TASK: replace 'datasetname' with the name of your dataset and get the total
#TASK: After you run it, write the total here:____
total=mutate(HairEyeColor, total=cumsum(Freq))


#Since we have a females dataset, let's make a males dataset
#TASK: Write the function that includes only rows that are 'male'

data()
View(HairEyeColor)
HairEyeColor %>%
  select(Sex) %>%
  filter(sex == "male") %>%
  na.omit()
#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')
bind_rows(HairEyeColor,Sex(male,female))

#Optional Task: add any of the other functions 
#you learned about from the dplyr package
install.packages("cellranger")
