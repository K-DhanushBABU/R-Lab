# Matrix Manipulation in R

# Task i: Create two matrices of the same dimension (A & B)
matrix_A <- matrix(1:9, nrow = 3, ncol = 3)
matrix_B <- matrix(9:1, nrow = 3, ncol = 3)

# Display matrices
cat("Matrix A:\n")
print(matrix_A)
cat("\nMatrix B:\n")
print(matrix_B)

# Task ii: Add the two matrices and display the result
sum_matrix <- matrix_A + matrix_B
cat("\nSum of matrices A and B:\n")
print(sum_matrix)

# Task iii: Scale a matrix by multiplying with a scalar and display result
scalar <- 2
scaled_matrix <- scalar * matrix_A
cat("\nScalar multiplication of matrix A:\n")
print(scaled_matrix)

# Task iv: Find transpose of the matrix and display
transpose_matrix_A <- t(matrix_A)
cat("\nTranspose of matrix A:\n")
print(transpose_matrix_A)

# Task v: Hadamard product (Element-wise product) of the two matrices
elementwise_product <- matrix_A * matrix_B
cat("\nElement-wise product of matrices A and B:\n")
print(elementwise_product)

# Task vi: Matrix multiplication
matrix_mult <- matrix_A %*% matrix_B
cat("\nMatrix multiplication of matrices A and B:\n")
print(matrix_mult)

# Task vii: Generate statistics - Sum, mean, and standard deviation of elements of A
sum_A <- sum(matrix_A)
mean_A <- mean(matrix_A)
sd_A <- sd(matrix_A)
cat("\nSum of elements in matrix A:", sum_A, "\n")
cat("Mean of elements in matrix A:", mean_A, "\n")
cat("Standard deviation of elements in matrix A:", sd_A, "\n")

# Task viii: Plot a heatmap of matrix A
heatmap(matrix_A, main = "Heatmap of Matrix A", xlab = "Columns", ylab = "Rows")

# Task ix: Plot bar plot to compare sums of the rows of matrix A
barplot(rowSums(matrix_A), names.arg = 1:nrow(matrix_A), main = "Bar Plot of Row Sums of Matrix A", xlab = "Rows", ylab = "Sum")
barplot(colSums(matrix_A), names.arg = 1:ncol(matrix_A), main = "Bar Plot of column Sums of Matrix A", xlab = "columns", ylab = "Sum")
