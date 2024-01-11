library(dplyr)
library(ggplot2)

purchase_data <- data.frame(
  customerID = c(101, 102, 103, 104, 105),
  purchaseAmount = c(150, 200, 120, 300, 80)
)

mean_purchase <- mean(purchase_data$purchaseAmount)
median_purchase <- median(purchase_data$purchaseAmount)
sd_purchase <- sd(purchase_data$purchaseAmount)
q1_purchase <- quantile(purchase_data$purchaseAmount, probs = 0.25)
q3_purchase <- quantile(purchase_data$purchaseAmount, probs = 0.75)

cat("Mean purchase Amount:", mean_purchase, "\n")
cat("Median purchase Amount:", median_purchase, "\n")
cat("Standard Deviation of purchase Amount:", sd_purchase, "\n")
cat("1st Quartile of purchase Amount:", q1_purchase, "\n")
cat("3rd Quartile of purchase Amount:", q3_purchase, "\n")


print(ggplot(purchase_data, aes(x = purchaseAmount)) + # variable name should match the coloumn in dataframe
        geom_histogram(binwidth = 50, fill = "blue", color = "black") +
        labs(title = "Distribution of Purchase Amounts", x = "Purchase Amount", y = "Frequency")
)
