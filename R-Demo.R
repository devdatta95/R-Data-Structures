#############################################################
#                                                           #
# 1 . what is vector                                        #
#                                                           #
#############################################################


"
Vectors is 1d array, we can create a vector in R by using
combine function 'c()' and every vector must be of same data type
"

# 1. Vector Creation


a <- c(1,2,3)
print(a)
class(a)
is.numeric(v1) # TRUE
is.integer(v1) # FALSE
is.double(v1) # TRUE
is.vector(a) # TRUE

a <- c(1L,2L,3L)
is.integer(a)

# without L = not an integer

b <- c("a","d","e")
print(b)
class(b)

c <- c(T,F)
print(c)
class(c)
is.vector(c)

d <- c(TRUE, 20,  40 ) # all elements converted to digits
print(d)
class(d)

d <- c("usa", 20,  40 ) # all elements converted to character 
print(d)
class(d)



# Using colon operator with numeric data


v <- 5:13 # Creating a sequence from 5 to 13.
is.vector(v)
print(v)


v <- 6.6:12.6 # Creating a sequence from 6.6 to 12.6.
print(v)


# Creating a vector with seq() 

v1 <- seq(1,10) 
v1

v2 <- seq(5, 9, by = 0.4) # from 5 to 9 incrementing by 0.4.
v2

V3 <- seq(1,4, length.out = 5) 
V3

"
when you write just one value in R, it becomes a vector of length 1 
"

a <- 5
typeof(a)
class(a)
is.vector(a)

"
R data objects and there are six types of vectors.
They are logical, integer, double, complex, character and raw.
"

# 2. assighning labels to vector element using names()  function


temp  <- c(77,54,97,42,23,45,96)
temp

names(temp) <- c("MON","TUE","WED","THU","FRI","SAT","SUN")
temp

days <-  c("MON","TUE","WED","THU","FRI","SAT","SUN")
names(temp) <- days
temp


# 3. arthmatic oprations on vector
# (Vectors opration are performed element by element)

v1 <- c(1,2,3)
v2 <- c(5,8,6)

v1 + v2
v1 - v2
v1 * v2
v1 / v2



# 4. comparison oprations on Vector

"
  >=
  <=
  >
  <
  ==
  !=
  
"

v1 <- c(1,8,5,6,4) # comparison by each element
v1 > 2

v2 <- c(5,8,6,4,6)
v1 > v2


# 5. Built in functions for vectors

v <- c(12,45,100,2)
sum(v)
prod(v)
mean(v)
min(v)
max(v)


sd(v) # Standard Deviation
var(v) # #Variance

# comebining two vectors
a <- c(1, 2, 3, 4) 
b <- c("Hadoop", "Spark", "HIVE", "Flink")
c <- c(a,b)
c

# 6. Vector Indexing 

v1 <- c(5,7,4,8,9,6)
v2 <- c("a","f","d","e")

v1[1]  # single index number
v2[1]

v1[c(1,4,5)] # diff index value
v2[c(1,3,4)]


v1[2:4]  # index slicing 
v2[1:3]




temp  <- c(77,54,97,42,23,45,96) # indexing for named element
temp

names(temp) <- c("MON","TUE","WED","THU","FRI","SAT","SUN")
temp

temp[2]
temp["WED"]
temp[c("FRI","TUE","MON")]

"
comparison on index 
"
v2 <- c(5,8,6,2,26,4,88,7,44,63)
v2 > 2
v2[v2>2]

my.filter <-  v2>2 # store the comparison opretor in variable 
v2[my.filter]

# 7. getting help with R

help("vector") # type the topic inside the function

?vector 

help.search("vector")

#############################################################
#                                                           #
# 2. What is Matrix                                         #
#                                                           #
#############################################################

"
A matrix will allow us to have a 2-dimensional data structure 
which contains elements consisting of the same data type.
"

# 1. Creating Matrix

1:10
v1 <- 1:20
v1


"
create a matrix using matrix funtion
"


matrix(v1) # this is matrix 
matrix(v1,nrow=2) # change the matrix shape to 2 row
matrix(v1,ncol = 4 ) # change the matix shape to 2 col

"How to decide the fill order in matrix ?
  - the matrix is filled by column in defualt
    we can change the bycol = False in matrix function
"

v1 <- 1:10
v1

matrix(v1, byrow = FALSE, ncol=2) # this is defualt settings
matrix(v1, byrow = TRUE, ncol=2) # by row filling the matrix


" q. Create a matix with two row and 5 col for stocks and 
  assignn the heading and row name to matrix "

g <- c(245,596,878,155,656) # create a vector
f <- c(128,655,365,336,698) # create another vector

stock <- c(g,f) # combine both the vector
stock

stock.matrix <- matrix(stock, byrow = T, nrow = 2) # create the matrix
stock.matrix

heading <- c("DAY 1","DAY 2","DAY 3","DAY 4","DAY 5") # create heading

index <- c("google","facebook") # create row heading 

colnames(stock.matrix) <- heading # add heading and row names
stock.matrix
rownames(stock.matrix) <- index

print(stock.matrix)


# 2. matrix arithamtic


" if we multiply two matrix then element by element opration is perfomed
so if we want to perfom true matrix multiplication then use '%*%' symbol"

v1 <- matrix(1:25,ncol = 5)
v2 <- matrix(1:25, ncol = 5)

"element by element multiplication "
v1 * v2

" True matrix multiplication "
v1 %*% v1


mat <- matrix(1:50,byrow=TRUE,nrow=5)
mat

# Multiplication
2*mat

# Division (reciprocal)
1/mat

# Division
mat/2

# Power
mat ^ 2

mat > 17
mat + mat
mat / mat
mat * mat



# 3. Matrix opration on row col

stock.matrix

"total of each cols"
colSums(stock.matrix)

'total of each rows'
rowSums(stock.matrix)

"mean of each row and cols"
rowMeans(stock.matrix)
colMeans(stock.matrix)

"add a row to stock.matirx"

am <- c(245,554,589,664,485)

tech.stock <- rbind(stock.matrix, am) # rbind for adding a row 
tech.stock  # note: vector name is used as heading 

"add a column to stock.matrix"

avg <- rowMeans(tech.stock) # create a avg col 
avg

tech.stock <- cbind(tech.stock, avg) # cbind is used to add column
tech.stock

# 4. matrix selection and indexing

"for vector we just need to pass the index "
v1 <- 1:15
v1[3]

"but matrix is 2D so we need to enter the row and col index"
m1 <- matrix(1:40, byrow = T, ncol = 5)
m1

m1[1,] # first row 
m1[,1] # first col


"[ROW , COL]"
m1[2:7,2:4]


# 5. FACTOR AND CATEGORICAL MATRICES
"
in R there are two categorical varibles
1. ordinal categorical varibles (order)
2. and nominal categorical varibales (no order)"


animal <- c("dog","cat","bird","dog","dog","cat","bird",'bird')
animal

factor(animal) # nominal categorical varibles 


temp <- c("cold","med","cold","med","hot","hot","cold","med","hot","cold")
fact.temp <- factor(temp,
                    ordered = T,
                    levels = c("cold","med","hot"))
fact.temp # ordinal varibles

summary(fact.temp) # summary of factor 
summary(temp) # summary of vector 


# EXTRA

"1. Chek if the variables is matrix or not using is.matrix()"

m1 <- matrix(1:10,byrow=T,ncol=5)
m1
is.matrix(m1) # we can use diff is.function calls 

"2. creat a uniforrm dis matrix runif()
runif(n, min = 0 , max = 1)
"
help(runif)
x <- runif(20)
x
m1 <- matrix(runif(20,min=2,max=15),ncol = 4)
m1


#############################################################
#                                                           #
# 3. What is DataFrame                                      #
#                                                           #
#############################################################


"
one of the main tools for data analysis with R Matrix inputs were 
limited because all the data inside of the matrix had to be of the 
same data type (numerics, logicals, etc). With Dataframes we will 
be able to organize and mix data types to create a very powerful 
data structure tool!
"

#  built in DataFrames for quick reference
state.x77
USPersonalExpenditure
women

"1. to chek all the data frame in built in function"
data()
USAccDeaths # enter the data set name to see the data frame 

"2. use head() and tail() function to see the records in the data frame object"
head(state.x77)
tail(state.x77)

"3. use str() as structure function and summary to see the stats of data frame object"
str(state.x77)
summary(state.x77)

"4. Create a data frame from vectors "

days <- c("MON","TUE","WED","THU","FRI")
temp <- c(45,58,26,42,45)
rain <- c(T,F,T,T,F)

data.frame(days,temp,rain)
df <- data.frame(days,temp,rain)
df
is.data.frame(df)

str(df)
summary(df)


# 2. DATA FRAMES SELECTION AND INDEXING 

df
df[1,]
df[,1]

"1. accesing data frames values with char instead of index "

df
df[,"rain"]

df[1:3,c("days","temp")] # select 1 to 3 row of colummn days and temp only



"2. call back columns using two diff method first using $ sighn and second using col names"

df$days # if you use $ then you will get the output in vector format 

df["days"] # but if you use col name you will get the output in dataframe format



"3. use subset() to select the data from data frame using a specific  condition"

# slect the data on which days it rains 
subset(df, subset = rain==TRUE) # enter the colname witout qoutation mark 

# select the data where temp is > 42 
subset(df, subset = temp>=42)


"4. sort the data frame in asc and desc "

# asc

sort.temp <- order(df["temp"]) # it only returns the index like argsort 
sort.temp

df[sort.temp ,  ]


# desc

rev.temp <- order(-df['temp']) # use - for reverse
rev.temp

df[rev.temp,  ]

desc.temp <- order(-df$temp)
df[desc.temp, ]


# 3. DATA FRAME OPRATIONS

#1 CREATING DATA FRAME

c1 <- 1:10
letters # in built method 
c2 <- letters[1:10]

df <- data.frame(col.name.c1 = c1, col.name.c2= c2)
df

#2 IMPORTING AND EXPORTING DATA 

df2 <- read.csv("DATA/risk_analytics_train.csv")
df2

write.csv(df2, file = "saved_df.csv") # it also save the index as column name


# For Excel Files
# Load the readxl package
library(readxl)
# Call info from the sheets using read.excel
df <- read_excel('Sample-Sales-Data.xlsx',sheet='Sheet1')


#3 GETTING INFORMATION ABOUT THE DATAFRAME

nrow(df)
ncol(df)
rownames(df)
colnames(df)
str(df)
summary(df)

#4 REFERENCING THE CELL IN DF

df
df[5,2]
df[[5,2]] # row  5 col 2
df[[5,"col.name.c2"]]

" change the single cell value "
df[[5,1]] <- 999
df[[6,1]] <- NA
df

#5 REFERENCING ROWS

df[1,]


#6 REFERENCING COLS

mtcars
head(mtcars)
mtcars$mpg  
mtcars["mpg"] # this will return the col in df object
mtcars[,1]
mtcars[,"mpg"]
mtcars[["mpg"]]

mtcars[1] # this too 

mtcars[c("mpg","cyl")]

#7 ADDING A ROW TO DF
df
df2 <- data.frame(col.name.c1 = 2000, col.name.c2 = "dev")
df2
df <- rbind(df, df2)
df

" adding a squre col in df"

df$squre <- 2*df$col.name.c1
df

"creating a copy of the col"
df$squre2 <- df$squre
df

df[,"squre3"] <- df$squre
df

#8 COL NAMES CHANGING

colnames(df)

"change all column names at once"

colnames(df) <- c("col_1","col_2","col_3","col_4","col_5")
df

"chnage only one column name"
colnames(df)[2] <- "new_name"
df

#10 SELECTING THE MULTIPLE ROWS

df[1:10,]
head(df,5)

df[-5,] # select everthing but not 5 row

"select multiple columns based on condition(mpg is > 21)"
mtcars

mtcars[mtcars$mpg > 21,]

"select mpg > 20 and cyl > 6"

mtcars[(mtcars$mpg > 20)  & (mtcars$cyl == 6),]


mtcars[(mtcars$mpg > 20)  & (mtcars$cyl == 6), c("mpg","cyl","disp")]

"using subset function"

subset(mtcars, subset = mpg>20 & cyl==6)

#11 SELECTING MULTIPLE COLUMNS

head(mtcars,7)
mtcars[,c("mpg","cyl","disp")]
mtcars[,c(1,2)]

#12 DEALING WITH MISSING DATA


"Dealing with missing data is a very important skill to know when working with data frames!
 "


any(is.na(df)) # detect anywhere in df

any(is.na(df$col.name.1)) # anywhere in col

# delete selected missing data rows
df <- df[!is.na(df$col), ]

# replace NAs with something else
df[is.na(df)] <- 0 # works on whole df

df$col[is.na(df$col)] <- 999 # For a selected column




is.na(mtcars) 
any(is.na(mtcars)) # detect anywhere in df

any(is.na(df)) 
df[is.na(df)] 
is.na(df)
df
df[is.na(df)] <- "k"
df

mtcars$mpg[is.na(mtcars$mpg)] <- mean(mtcars$mpg)

# Merging Data Frames

## use character columns of names to get sensible sort order

# --------------------------------------------------------------------------
authors <- data.frame(
  
  surname = I(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")),
  
  nationality = c("US", "Australia", "US", "UK", "Australia"),
  
  deceased = c("yes", rep("no", 4))
  
)
# --------------------------------------------------------------------------


books <- data.frame(
  name = I(c("Tukey", "Venables", "Tierney",
             "Ripley", "Ripley", "McNeil", "R Core")),
  title = c("Exploratory Data Analysis",
            "Modern Applied Statistics ...",
            "LISP-STAT",
            "Spatial Statistics", "Stochastic Simulation",
            "Interactive Data Analysis",
            "An Introduction to R"),
  other.author = c(NA, "Ripley", NA, NA, NA, NA,
                   "Venables & Smith"))

# --------------------------------------------------------------------------

authors
books

m1 <- merge(authors, books, by.x = "surname", by.y = "name")
m1

#############################################################
#                                                           #
# 4 . What is list                                          #
#                                                           #
#############################################################
"
Lists will allow us to store a variety of data structures under 
a single variable. This means we could store a vecor,matrix, 
data frame, etc. under a single list. 
"

# 1. Creating a list 

# Create a vector
v <- c(1,2,3,4,5)

# Create a matrix
m <- matrix(1:10,nrow=2)

# Create a data frame
df <- women
df

"We can use the list() to combine all the data structures:"
  
li <- list(v,m,df) #ist() assigned numbers to each of the objects in the list
li

#  assign names
li <- list(sample_vec = v,sample_mat = m, sample_df = df)
li

# 2. Selecting objects from a list

# Single brackets
li[1] # By index

# By name
li['sample_vec']

# Notice the type!
class(li['sample_vec'])

# Use double brackets to actually grab the items
a<- li[['sample_vec']]
a

class(a)

b <- li['sample_vec']
b
class(b)

li$sample_vec

li[['sample_vec']][1] # Second set of indexing

class(li['sample_mat'])
class(li[['sample_mat']])

li[['sample_mat']][1,]

li[['sample_mat']][1:2,1:2]

li[['sample_df']]['height']

# 3. Combining lists
"Lists can hold other lists! You can also combine lists using the combine function c():"


double_list <- c(li,li)
double_list

str(double_list)

#############################################################
#                                                           #
# 5 . What is array                                         #
#                                                           #
#############################################################

"
R arrays are the data objects which can store data in 
more than two dimensions. An array is created using the 
array() function."


# 1. Create Array in R

# create an R array of two 3×3 matrices each with 3 rows and 3 columns.

# Create two vectors of different lengths.

vector1 <- c(2,9,3)
vector2 <- c(10,16,17,13,11,15)

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)


 # 2. Naming Columns And Rows

vector1 <- c(2,9,6,5,3,9,7,1,4)
vector2 <- c(10,15,13,16,11,12,22,77,99)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),
                dim = c(3,3,2),
                dimnames = list(row.names,column.names,
                matrix.names)
                )
print(result)

# 3. Accessing R Array Elements

# Print the third row of the second matrix of the array.

print(result[3,,2])
# Print the element in the 1st row and 3rd column of the 1st matrix.

print(result[1,3,1])
# Print the 2nd Matrix.

print(result[,,2])



#############################################################################################
install.packages("knitr")
library(knitr)
knitr::stitch('R-Demo.R')
browseURL('R-Demo.pdf')











