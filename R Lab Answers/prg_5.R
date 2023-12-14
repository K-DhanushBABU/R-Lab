# Function to calculate average scores for each student
calculate_average_scores <- function(data) {
  data$Average_Score <- rowMeans(data[, c("Math_Score", "Science_Score", "History_Score")])
  return(data)
}

# Function to identify students with attendance below a certain threshold
identify_low_attendance_students <- function(data, threshold) {
  low_attendance <- data[data$Attendance < threshold, c("Name", "Attendance")]
  return(low_attendance)
}

# Function to generate a report with student names, average scores, and attendance
generate_report <- function(data) {
  report <- data.frame(
    Name = data$Name,
    Average_Score = data$Average_Score,
    Attendance=data$Attendance
    
  )
  return(report)
}

# Function to take input from user for student information
get_student_data <- function() {
  name <- readline(prompt = "Enter student name: ")
  math_score <- as.numeric(readline(prompt = "Enter Math score: "))
  science_score <- as.numeric(readline(prompt = "Enter Science score: "))
  history_score <- as.numeric(readline(prompt = "Enter History score: "))
  attendance <- as.numeric(readline(prompt = "Enter Attendance percentage: "))
  
  return(data.frame(
    Name = name,
    Math_Score = math_score,
    Science_Score = science_score,
    History_Score = history_score,
    Attendance = attendance
  ))
}

# Initialize an empty data frame to store student data
student_data <- data.frame(
  Name = character(),
  Math_Score = numeric(),
  Science_Score = numeric(),
  History_Score = numeric(),
  Attendance = numeric(),
  stringsAsFactors = FALSE
)

menu_choice <- 0

while (menu_choice != 3) {
  cat("\nMenu:")
  cat("\n1. Add New Student")
  cat("\n2. Generate Report")
  cat("\n3. Exit\n")
  
  menu_choice <- as.integer(readline(prompt = "Enter your choice (1/2/3): "))
  
  if (menu_choice == 1) {
    # Get student information from user
    new_student <- get_student_data()
    
    # Add new student to the student_data data frame
    student_data <- rbind(student_data, new_student)
    cat("\nNew student added successfully!\n")
  } else if (menu_choice == 2) {
    if (nrow(student_data) == 0) {
      cat("\nNo student data available. Please add students first.\n")
    } else {
      # Calculate average scores for each student
      student_data <- calculate_average_scores(student_data)
      
      # Identify students with attendance below a certain threshold (e.g., 70)
      low_attendance_students <- identify_low_attendance_students(student_data, 70)
      
      # Generate a report with student names, average scores, and attendance
      performance_report <- generate_report(student_data)
      
      # Display the report
      print(student_data[, c("Name", "Average_Score")])
     
      
      # Display students with low attendance
      cat("\nStudents with Attendance Shortage:\n")
      print(low_attendance_students)
      
      # Print all student names with their average scores and attendance
      cat("\n performance report\n")
      print(performance_report)
      
    }
  } else if (menu_choice == 3) {
    cat("\nExiting the program. Goodbye!\n")
  } else {
    cat("\nInvalid choice. Please enter 1, 2, or 3.\n")
  }
}
