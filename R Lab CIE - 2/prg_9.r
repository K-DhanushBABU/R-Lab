# Lab Exercise 9: Visualization

# Load necessary library (ggplot2)
library(ggplot2)

# Prepare example data

num_students <- 4
student_data <- data.frame(
 # StudentName = paste0("Student_", 1:num_students),
  StudentName = c('Dhanush',"prasad","Deekshith","Darshan"),
  #Scores = sample(60:100, num_students, replace = TRUE),
  Scores = c(90,89,85,90),
  #AttendancePercentage = sample(70:100, num_students, replace = TRUE)
  AttendancePercentage = c(85,90,83,95)
)
print(student_data)
# Tasks
# i. Scatter plot
scatter_plot <- ggplot(student_data, aes(x = Scores, y = AttendancePercentage)) +
  geom_point(color = "blue") +
  labs(title = "Scores vs. Attendance",
       x = "Scores",
       y = "Attendance")

# ii. Bar plot
bar_plot <- ggplot(student_data, aes(x = StudentName, y = Scores)) +
  geom_bar(stat = "identity", fill = "green") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Distribution of Scores",
       x = "Student Name",
       y = "Scores")

# iii. Line plot
line_plot <- ggplot(student_data, aes(x = 1:num_students, y = Scores)) +
  geom_line(color = "red") +
  labs(title = "Score Trend Over Time",
       x = "Time",
       y = "Scores")

# iv. Histogram
histogram <- ggplot(student_data, aes(x = Scores)) +
  geom_histogram(binwidth = 5, fill = "purple", color = "black") +
  labs(title = "Score Distribution",
       x = "Scores",
       y = "Frequency")

# Display plots
print(scatter_plot)
print(bar_plot)
print(line_plot)
print(histogram)
