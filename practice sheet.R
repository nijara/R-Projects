# setting the working directory
# Module 1
getwd()
setwd("D:/Nijar_R")
getOption("defaultpackages")

# Mathematical operations
1 + 1
1 + 2 + 3
2 - 3
2 * 3
2 * 3 + 1
5 / 2
3 ^ 2
5 %% 2 # Modulo, gives the remainder

# Variables
# Assign a value to a variable
x1 <- 2
x2 <- -4
x2
(x3 <- 1:5)
x4 <- x5 <- 3
assign("x6", 9)
x7 <- "Hello World"
print(x7)
x8 <- 5.5
x1 <- 3.5
x9 <- 5L # L is used to indicate integer
x10 <- seq(1:5)
x10
my_marks_in_r <- 75
print("i have got a hang of this")

# remove a variable
rm(x5)
x5 # understand the error

# use the created variables/objects in calculations
x1 + x2
my_sum <- x8 + x9
print(my_sum)
x9 * 5

# Data Types
class(x1)
class(x9)
class(x7)
typeof(x10)
is.numeric(x2)

# Alternate way of handling character data
my_name <- factor("Nijara Das")
class(my_name)
my_name
x7

# Dates
today_date <- as.Date("2020-02-11")
today_date
class(today_date)
today_date + 7

# Logical
is_r_easy <- TRUE
class(is_r_easy)
2 > 3
1 + 1 == 3
1/49 * 49 == 1

# Built in Functions
# Numeric Functions
abs(-4.5)
sqrt(16)
ceiling(-4.565)
floor(4.565)
trunc(4.565)
ceiling(-4.565)
floor(-4.565)
trunc(-4.565)
round(4.565)
round(4.565, digits = 2)
round(-4.565)
round(-4.1)
signif(4.565, digits = 2)
log(10)
exp(1)
factorial(3)

# Character Functions
word <- "programmingwithR"
substr(word, start = 12, stop = 15)
substr(word, start = 12, stop = 15) <- "thru"
word
word_1 <- "Split the words in a sentence"
strsplit(word_1, "")
full_name <- "Nijara Das"
strsplit(full_name, "")
strsplit(full_name, "")[[1]][[1]]
rating <- c("A", "B", "A+", "AA", "C")
grep("A", rating)
news <- ("The traffic in bangalore is chaotic. Bangalore is an IT city")
sub("bangalore", "Bengaluru", news)
gsub("Bangalore", "Bengaluru", news)
toupper(news)
tolower(news)
