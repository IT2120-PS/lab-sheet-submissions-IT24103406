setwd("C:\\Users\\it24103406\\Desktop\\it24103406")

#Q01
branch_data <- read.table("Exercise.txt", header = TRUE,sep=",")
fix(branch_data)

#Q02
head(branch_data)
colnames(branch_data)
str(branch_data)

#Q03
boxplot(branch_data$Sales,
        main = "Boxplot of Sales",
        ylab = "Sales"
)


#Q04
fivenum(branch_data$Advertising)
IQR(branch_data$Advertising)


#Q05
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_val <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR_val
  upper <- Q3 + 1.5 * IQR_val
  outliers <- x[x < lower | x > upper]
  return(outliers)
}

find_outliers(branch_data$Years)
