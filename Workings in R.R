#Alt + - is to inset assignment operator
# Mathematical Operations 
1 + 1
1+2+3
2-3
2 * 3
2 * 3 + 1
5 / 2
3 ^ 2
5 %% 2
# Variables
x1 <- 2
x2 <- -4
x2
#Factor Vectors
participant_qualification <- factor(c("UG","PhD","UG","PG","UG"),
                                levels = c("UG", "PG", "PhD"), ordered = TRUE)
# Matrices
mat_A <- matrix(1:10, nrow = 5)
mat_A
mat_B <- matrix(1:10, ncol = 5)
mat_B
mat_C <- matrix(11:20,5)
mat_C
mat_D <- matrix(11:20, ,5)
mat_D
add_mat <- mat_A + mat_C
rbind(mat_A, mat_C)
cbind(mat_A, mat_C)
mul_mat <- mat_A %*% mat_B # size of two mat should be mxn and nxm multiply
mul_mat
mat_A == mat_C
mat_A %*% t(mat_C)
colnames(mat_A) <- c("ac1", "ac2")
rownames(mat_A) <- c("ar1","ar2","ar3", "ar4", "ar5")
mat_B <- matrix(1:10, ncol = 5,
                dimnames = list(c("br1", "br2"),
                                c("bc1", "bc2", "bc3","bc4","bc5")))
mat_A %*% mat_B
mat_E <- matrix(11:20,5,byrow = T)
dim(mat_E)
nrow(mat_E)
ncol(mat_E)
length(mat_E)
dim(mat_E) <- c(2,5)

#Extract elements of a matrix
mat_E[1,2]
mat_E[1,]
mat_E[ ,3:5]
mat_E[3]
participant_name <- c("ANil", "Badri", "Chetna", "Dinesh", "Elisa")
participant_qualification <- c("UG", "PG", "PHD")
participant_income <- c(60000, 100000, 45000, NA, 70000)
participant_sport <- c("Hk", "Cr", "BB", "Hk", "BB")

#Data Frame
df1.participant <- data.frame(participant_name, participant_qualification, participant_income, participant_sport)
df1.participant
# rename column


#check variable
class(df1.participant)
df1.participant <- data.frame(participant_name,participant_qualification,participant_income,participant_sport)
df1.participant$
class(df1.participant)
nrow(df1.participant)
ncol(df1.participant)
dim(df1.participant)
names(df1.participant)
colnames(df1.participant)
rownames(df1.participant0)
head(df1.participant)
head(df1.participant, 2)
tail(df1.participant, 2)
df1.participant$name
df1.participant$sport
df1.participant[1,3]
df1.participant[ ,3]
df1.participant["income"]
df1.participant[1,1]
df1.participant[, c(1,3)]
df1.participant[[1]][2,3]
is.na(df1.participant)
df1.participant(participant_sport)
df1.participant(participant_sport)
is.na(df1.participant)

#Manipulating of a Data Frame
register_no <- c(1001:1005)
test_1_marks <- c(10, 20, 30, 40, 50)
test_2_marks <- c(15, 25, 35, 45, 25)
total_marks <- test_1_marks + test_2_marks
df2.participant <- data.frame(register_no, total_marks)
df3.participant <- cbind(df1.participant, df2.participant)
df3.participant
df4.participant <- cbind(df1.participant$participant_name,
                         df2.participant,
                         df1.participant[ ,-1])
df4.participant
new_admission <- data.frame(name = "Newguy",
                            qualification = "Dip",
                            sport = "Fb",
                            income = 150000,
                            register_no = 1006,
                            total_marks = 35)
rbind(df4.participant, new_admission)

# merge
fee <- c(100000, 75000, 80000, 100000, 0)
df5.participant <- data.frame(register_no, fee)
df5.participant
merge(df3.participant, df5.participant)
merge(df3.participant, df5.participant, by = "register_no")

# Sorting
df3.participant[order(df3.participant$total_marks), ]
df3.participant[order(-df3.participant$income),]

# Subsetting a DF
df6.participant <- df3.participant[c(-2:4)]

# Editing a DF
df6.new <- edit(data.frame(df6.participant))

# Lists
list_1 <- list(1:5, c("a", "b", "c", "d", "e"))
list_1
list_2 <- list(df3.participant, mat_A, fee, myname = "DG")
list_2[[4]] <- list_1
list_2

#Reading CSV file
location1 <- "D:/data.csv"
location1 <- "D:/Myfile.csv"
temp_value <- read.table(file = location1,
                         sep = ",",
                         header = TRUE)
temp_value <- read.table(file = location1,sep = ",",header = T)
temp_value <- read.table(file = location1,sep = ",",header = T)
location1 <- "D:/Myfile.csv"
temp_value <- read.table(file = location1,sep = ",",header =T) 
#enter text file means end if document
read.csv(location1)
mynewfile <- read.csv(location1)
locationtemp <- "D:/nifty_values.csv"
nifty_values <- read.csv(locationtemp)
head(nifty_values)
tail(nifty_values)
#reading excel file
install.packages("xlsx")
library(xlsx)
location2 <- "D:/nifty_values.xlsx"
nifty_excel <- read.xlsx(,location2,
                         sheetIndex = 1) 


#reading website data
install.packages("quantmod")
library(quantmod)
nifty_yahoo <- getSymbols("^NSEI")
head(nifty_yahoo)
tail(nifty_yahoo)

df1.participant
participant_name

install.packages("dplyr")
library(dplyr)
path <- "D:/Placement_Data_Class.csv"
placement <- read.csv(path)
class(placement)
colnames(placement)
head(placement)
str(placement)
levels(placement$degree_t)
levels(placement$degree_t) <- c("CM","OT","ST")
levels(placement$degree_t)


#filter() function to pick rows
filter(placement, degree_t == "CM",
       degree_p >= 80)
filter(placement, degree_t == "CM",
       degree_p >= 80,
       gender != "M")
filter(placement, degree_t == "CM",
       degree_p >= 80 | degree_p <=55)
filter(placement, degree_t == "CM",
       degree_p >= 80 | degree_p <=55,
       gender != "F")

# create a subset of the main data
p_xtreme <- filter(placement, degree_p >=85 | degree_p <=52)
p_xtreme

# arrange () function to reorder the rows
arrange(p_xtreme, etest_p)
arrange(p_xtreme, desc(ssc_p))
arrange(p_xtreme, gender, desc(ssc_p))

#select() function to pick variables
select(p_xtreme, ssc_p, hsc_p, degree_p)
select(p_xtreme, ssc_p:degree_p)
select(p_xtreme, -(ssc_p:degree_p))
select(p_xtreme, ends_with("_p"))
select(p_xtreme, starts_with("h"))
select(p_xtreme, contains("_"))
rename(p_xtreme, gen = gender)
select(p_xtreme, 1:3)

# to create new variables
mutate(p_xtreme, avg_p = (ssc_p + hsc_p + degree_p)/3)
transmute(p_xtreme, avg_p = (ssc_p + hsc_p + degree_p)/3)


# summary of the variable
summarise(p_xtreme, mean(degree_p))
summarise(group_by(p_xtreme, degree_t), mean(degree_p))
summarise(p_xtreme, median(degree_p))

# select a random sample
sample_n(placement, size = 10)
set.seed(100)
sample_n(placement, size = 10)
sample_frac(placement, size = 0.10)
sample_n(placement, size = 2)
set.seed(25)
sample_n(placement, size = 2)

# pipe operator
placement %>% group_by(degree_t) %>% summarise(count = n())
placement %>% group_by(degree_t) %>% summarise(mean(degree_p))
placement %>% filter(status == "Placed") %>% group_by(degree_t, workex) %>% summarise(mean(degree_p))


# Line Chart
location <- "D:/data_line_chart.csv"
linedata <- read.csv(location)
str(linedata)

# Tree Map
install.packages("treemapify")
library(treemapify)
location <- "D:/data_treemap.csv"
treedata <- read.csv(location)
colnames(treedata)
install.packages("ggplot2")
library(ggplot2)


# Bar Chart
base2 <- ggplot(placementgg,aes(degree_t))


location4 <- "D:/Nijar_R"
placementgg <- read.csv(location4)
location4 <- "D:/Placement_Data_Class.csv"
placementgg <- read.csv(location4)
head(placementgg)


#Heat map
colnames(placementgg)
placementgg_num <- placementgg[, c(3,5,8,11)]
colnames(placementgg_num)
corr_matrix <- round(cor(placementgg_num),2)
df_corr <- reshape2::melt(corr_matrix)
ggplot(data = df_corr) + geom_tile(mapping = aes(x = Var1, y = Var2, fill = value))

# Pirwise Scatterplot matrix
install.packages("GGally")
library("GGally")
library(GGally)
ggcorr(placementgg_num)
ggpairs(placementgg_num)
ggscatmat(placementgg, columns = c(3,5,8,11), color = "status")

library(dplyr)
placementgg %>% filter(status == "Placed",
                       degree_t == "Comm&Mgmt")
summarize(count = n())
rlang::last_error()
dplyr::summarise(count = n())
summarize(count = n())

# Mosaic Plot
install.packages("ggmosaic")
library(ggmosaic)
base5 <- ggplot(placementgg)
base5 + geom_mosaic(aes(x = product(status, degree_t)))
base5 + geom_mosaic(aes(x = product(status, degree_t), fill = status))

install.packages("plotly")
library(plotly)
ggplotly(base5 + geom_mosaic(aes(x = product(status, degree_t), fill = status)))
base5 + geom_mosaic(aes(x = product(status, degree_t), fill = status)) + facet_grid(gender~.)
ggplotly(base5 + geom_mosaic(aes(x = product(status, degree_t), fill = status)) + facet_grid(gender~.))


# Quick Plot
gplot(ssc_p, hsc_p, data = placementgg)
qplot(ssc_p, hsc_p, data = placementgg)


# saving a plot
setwd("D:/Nijar_R")
ggsave("myplot.pdf")
ggsave("myplot.png")

library(dplyr)
library(ggplot2)
path <- "D:/Placement_Data_Full_Class.csv"
placementds <- read.csv(path)
colnames(placementds)
placementds$sl_no <- NULL
colnames(placementds)

#Module 4
# split the dataset
placementnum <- select(placementds, ends_with("_p"),salary)
placementcat <- select(placementds, -(ends_with("_p")),
                       -salary)
placedset <- filter(placementds, status =="Placed")
levels(placementds$status)
placedset <- na.omit(placementds)
notplacedset <- subset(placementds, status == "Not Placed")


# Explore
class(placementds)
anyNA(placementds)
colSums(is.na(placementds))
lapply(placementds, anyNA)
str(placementds)
unique(placementds$degree_t)
levels(placementds$ssc_b)


# summary statistics
# measures of central tendency
mean(placementnum$degree_p)
placementds %>% group_by(degree_t) %>% summarise(mean(degree_p))
group_by(placementds, degree_t, status) %>% summarise(mean(degree_p))
aggregate(degree_p ~ status + degree_t, placementds, FUN = mean)
sapply(placementnum, mean)
apply(placementnum, 2, mean)
apply(placementnum, 1, mean)
lapply(placementnum, mean)
tapply(placementds$degree_p, placementds$gender, mean)

# median
median(placementnum$salary, na.rm = T)
median(placementnum$salary)
quantile(placementnum$salary, na.rm = T)
quantile(placementnum$salary, 0.25, na.rm = T)
quantile(placementnum$salary, 0.1, na.rm = T)
fivenum(placementnum$salary, na.rm = T)


# Mode
install.packages("lsr")
lsr::modeOf(placementnum$salary)


# other means
colMeans(placementnum)
rowMeans(placementnum[, -6])
mean(placementnum$salary, na.rm = T)
median(placementnum$salary, na.rm = T)
mean(placementnum$salary, trim = 0.10, na.rm = T)
