library(readr)
library(dplyr)
library(ggplot2)

# Load the Dataset
IPL_data <- read_csv("C:/Users/ADMIN/Downloads/data.csv")

# Task 1: Data Overview and Structure
# Display the structure of the dataset
str(IPL_data)
summary(IPL_data)


# Task 2: Basic Data Insights
# Calculate and display the total number of matches in the dataset
Total_matches <- nrow(IPL_data)
cat("The total number of matches in the dataset is", Total_matches, "\n")

# Determine the number of unique teams that have participated in IPL matches
Unique_teams <- unique(c(IPL_data$team1, IPL_data$team2))
n_teams <- length(Unique_teams)
cat("The number of unique teams that have participated in IPL matches is", n_teams, "\n")
cat("The unique teams:", Unique_teams, "\n")

# Task 3: Team Performance Analysis
# Calculate the number of matches won by each team and display the results
Matches_won_by_team <- table(IPL_data$winner)
cat("The number of matches won by each team is:\n")
print(Matches_won_by_team)

# Compute the average win by runs in the matches
avg_runs <- mean(IPL_data$win_by_runs, na.rm = TRUE)
cat("The average total runs scored in matches ", avg_runs, "\n")


# Calculate the average win by wickets in the matches
avg_wickets <- mean(IPL_data$win_by_wickets, na.rm = TRUE)
cat("The average total wickets taken in the matches", avg_wickets, "\n")


# Task 4: Venue Insights
# Identify and display the most frequently used venue for matches
frequent_venue <- names(which.max(table(ipl_data$venue)))
cat("Most frequently used venue:", frequent_venue, "\n")


# Task 5: Visualization
matches_won_data <- as.data.frame(Matches_won_by_team)
matches_won_data$Team <- rownames(matches_won_data)
barplot(Matches_won_by_team, main = "Number of Matches Won by Each Team",
        xlab = "Team", ylab = "Wins", col = rainbow(n_teams))
