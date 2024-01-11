library(readr)
library(dplyr)

customer_ids <- 1:20
# Generating 100 Random numbers from 10 to 200.
purchase_amounts <- runif(20, min = 1, max = 20)

dummy_data <- data.frame(
  Customer_ID = customer_ids,
  Purchase_Amount = purchase_amounts
)
# Writing into a CSV file customer_purchases.csv
write.csv(dummy_data, "customer_purchases.csv", row.names = FALSE)

purchase_data <- read_csv("customer_purchases.csv")

total_records <- nrow(purchase_data)
total_unique_customers <- n_distinct(purchase_data$Customer_ID)
cat("Total number of records:", total_records, "\n")
cat("Total number of unique customers:", total_unique_customers, "\n")
mean_purchase_amount <- mean(purchase_data$Purchase_Amount)
median_purchase_amount <- median(purchase_data$Purchase_Amount)

std_dev_purchase_amount <- sd(purchase_data$Purchase_Amount)
cat("Mean purchase amount:", mean_purchase_amount, "\n")
cat("Median purchase amount:", median_purchase_amount, "\n")
cat("Standard deviation of purchase amounts:", std_dev_purchase_amount,
    "\n")
#Creating a new column called segment.
purchase_data$Segment <- ifelse(purchase_data$Purchase_Amount <
                                  median_purchase_amount, "Low Spender", "High Spender")
print(purchase_data)
hist(purchase_data$Purchase_Amount, main = "Distribution of Purchase
Amounts", xlab = "Purchase Amount", col = "blue", border = "black")