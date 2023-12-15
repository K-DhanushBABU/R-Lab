calculate_fine <- function(days_overdue) {
  if (days_overdue <= 7) {
    fine <- 0
  } else if (days_overdue <= 15) {
    fine_per_day <- 2
    fine <- (days_overdue - 7) * fine_per_day
  } else if (days_overdue <= 30) {
    fine_per_day <- 3
    fine <- 8 * 2 + (days_overdue - 15) * fine_per_day
  } else if (days_overdue <= 50) {
    fine_per_day <- 5
    fine <- 8 * 2 + 15 * 3 + (days_overdue - 30) * fine_per_day
  } else {
    fine <- "Contact library"  # Over 50 days - contact library
  }
  return(fine)
}

# ... (rest of your code remains the same)


days_overdue <- as.integer(readline("Enter the days overdue: "))

fine_amt <- calculate_fine(days_overdue)

cat("Fine amount is: ", fine_amt, "\n")

if (fine_amt == 0) {
  cat("No fine. Thank you for returning the book.\n")
} else {
  if (fine_amt > 50) {
    cat("Please contact the librarian.\n")
  } else {
    cat("Please pay the specified fine amount.\n")
  }
}
