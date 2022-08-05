# Data frame ------------------------------------------------------------------
rm(list=ls())

# table with the same type within a column and different types between columns # defined with a data.frame() function
id=c(1,2,3)
name=c("a","b","c")
marks = c(50, 0, 25)
sample_df=data.frame(id,name,marks)
sample_df

my_df <- data.frame(id = c(1, 2, 3), 
                    name = c("Ramu","Raju","Ravi"),
                    marks = c(50, 40, 25))
my_df

#dimension of the data frame
dim(my_df)

#columns of the data frame
names(my_df)

#structure of the data frame
str(my_df)

#summary statistics of the data frame
summary(my_df)

head(my_df)   #top 6 rows in the data frame
tail(my_df)   #bottom 6 rows in the data frame

################ ADDING/Removing columns
# Ways to add a column

my_df
#initialize with 0
my_df$name

my_df$perf <- 0
my_df

my_df$perf <- c("very good","good","needs to improve")
my_df

#can use [[]],[],[,]
my_df[["perf"]] <-c("very good","good","needs to improve") 
my_df["perf"] <- c("very good","good","needs to improve")
my_df[,"perf"] <- c("very good","good","needs to improve")
my_df[5] <- 0
my_df


# Ways to remove the column

my_df[5] <- NULL
my_df$V5 <- NULL
my_df
my_df$perf <- NULL
my_df[["perf"]] <- NULL
my_df["perf"] <- NULL
my_df[5] <- NULL
my_df$V5 <- NULL

#subsetting

df1 <- subset(my_df, select=c(id,marks))
df1


df1 <- subset(my_df, select=-marks)
df1
View(df1)

my_df$mark2 <- c(30,20,10)
my_df

#sum of all marks
sum(my_df$mark2)

#rowsum
my_df$total <- rowSums(my_df[c(3,5)])
my_df

#max
max(my_df$total)
#index at which max value is present
which.max(my_df$total)


#name of the student who got the max mark
my_df[["name"]][which.max(my_df$total)]
my_df$name[which.max(my_df$total)]
my_df[which.max(my_df$total),2]

my_df
my_df <- rbind(my_df,data.frame(id=4,name="avgscore",marks=mean(my_df$marks),perf="meanperf",mark2=mean(my_df$mark2),total=mean(my_df$total)))
getwd()
setwd("/home/student/20BCE1685")
write.csv(my_df,"marks1.csv")
write.csv(my_df,"marks.csv",row.names = FALSE)

#R datasets

stu_marks <- read.csv("marks.csv")
str(stu_marks)

stu_marks
stu_marks$mark2
stu_marks[4]
stu_marks[3,3]
stu_marks[3,5]
stu_marks
stu_marks[c(1,3),c(2,5)]

stu_temp <- stu_marks[c(-2,-4)]
stu_temp

row.names(stu_temp)
row.names(stu_temp) <- stu_marks$name
stu_temp

boolv <- stu_temp["mark2"]>10
boolv
row.names(stu_temp)[boolv]
#--------------------------------------------------------------------
library(help=datasets)

data(mtcars)                 # Loading mtcars data set
cars <-mtcars                # Save the data into workspace
#load()
# Viewing data set
mtcars                       # Total data set in console
View(mtcars)                 # Viewing dataset in spreadsheet

head(mtcars)              # Viewing top-6 observations (default: top-6)
tail(mtcars)                 # Viewing bottom 6 observations
str(mtcars)                  # Viewing data dictionary
names(mtcars)                # Viewing column names


v1 <- mtcars$mpg             # Assigning single variable from mtcars data to v1
v2 <- mtcars$cyl
v3 <- mtcars$disp
v4 <- mtcars$hp
newvar <- mtcars$disp + mtcars$hp

mtcars1<-rbind(v1,v2,v3,v4) # Combined as rows #Horizontal joins
mtcars1
mtcars2<-cbind(v1,v2,v3,v4) # Combined as columns # Vertical joins
mtcars2

#create a variable obs_subset and have rows 4 to 10 in mtcars
obs_subset <- mtcars[4:10,]
obs_subset

#create a variable var_subset and have only the columns 1,5,9
var_subset <- mtcars[,c(1,5,9)]
var_subset

#subsetting
#create a variable subset1 and have only mpg and cyl variables of mtcars
#using indexing
subset1 <- mtcars[,c(1,2)]
head(subset1,3)
#using subset()
subset2 <- subset(mtcars,select=c(mpg,cyl))
subset2

#create a variable subset3 and have only the rows where mpg>18
subset3 <- subset(mtcars,mpg>18)
subset3

#create a variable subset3 and have only the rows where mpg>18 and cyl>5
subset4 <- subset(mtcars, mpg>18 &cyl>5)
subset4

#exclude mpg and cyl columns
subset4 <- subset(mtcars, mpg>18 &cyl>5, select=c(-mpg,-cyl))
subset4
