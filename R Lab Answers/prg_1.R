# Define a list of products represented as dictionaries with keys: "name", "price", and "quantity"


all_products <- list(
  list(name = "Apple", price = 2.5, quantity = 3),
  list(name = "Banana", price = 1.75, quantity = 2),
  list(name = "Orange", price = 3.0, quantity = 1),
  list(name = "Appe", price = 2.5, quantity = 3),
  list(name = "Ban", price = 1.75, quantity = 2),
  list(name = "Oran", price = 3.0, quantity = 1)
)

cat("all products","\n")
cat("Product\t\tPrice\n")
for(prod in all_products)
{
  cat(prod$name, "\t\t", prod$price ,"\n")
}



products <- list(
  list(name = "Apple", price = 2.5, quantity = 3),
  list(name = "Banana", price = 1.75, quantity = 2),
  list(name = "Orange", price = 3.0, quantity = 1)
  # Add more products as needed
)

# Function to calculate subtotal for each item and display a detailed receipt
calculate_receipt <- function(products) {
  subtotal <- 0
  
  cat("Detailed Receipt:\n")
  cat("-------------------------------------------------\n")
  cat("Product\t\tQuantity\tPrice\t\tSubtotal\n")
  cat("-------------------------------------------------\n")
  
  for (product in products) {
    name <- product$name
    price <- product$price
    quantity <- product$quantity
    product_subtotal <- price * quantity
    
    cat(name, "\t\t", quantity, "\t\t", price, "\t\t", product_subtotal, "\n")
    
    subtotal <- subtotal + product_subtotal
  }
  
  cat("-------------------------------------------------\n")
  cat("Total Cost before Tax: ", subtotal, "\n")
  
  # Calculate tax (e.g., 8% tax rate)
  tax_rate <- 0.08
  tax_amount <- subtotal * tax_rate
  
  cat("Tax Amount (8%): ", tax_amount, "\n")
  
  # Calculate final total cost including tax
  final_total <- subtotal + tax_amount
  cat("Final Total Cost: ", final_total, "\n")
}

# Call the function to calculate the receipt for the products
calculate_receipt(products)
