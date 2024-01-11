# Define arrays to store inventory items and corresponding quantities
inventory_items <- c()  # Array to store inventory items
inventory_quantities <- c()  # Array to store corresponding quantities

# Function to add a new item along with its quantity
add_item <- function(item, quantity) {
  inventory_items <<- c(inventory_items, item)  # Append new item to the inventory_items array
  inventory_quantities <<- c(inventory_quantities, quantity)  # Append quantity to the inventory_quantities array
  cat("Item", item, "with quantity", quantity, "added to inventory.\n")
}

# Function to update the quantity of an existing item
update_quantity <- function(item, new_quantity) {
  index <- match(item, inventory_items)  # Find the index of the item in the inventory_items array
  if (!is.na(index)) {
    inventory_quantities[index] <<- new_quantity  # Update the quantity at the found index
    cat("Quantity of", item, "updated to", new_quantity, "in inventory.\n")
  } else {
    cat("Item", item, "not found in inventory.\n")
  }
}


# Function to remove an item and its quantity from inventory
remove_item <- function(item) {
  index <- match(item, inventory_items)
  if (!is.na(index)) {
    inventory_items <<- inventory_items[-index]
    inventory_quantities <<- inventory_quantities[-index]
    cat("Item", item, "removed from inventory.\n")
  } else {
    cat("Item", item, "not found in inventory.\n")
  }
}


# Function to display inventory items and quantities
display_inventory <- function() {
  if (length(inventory_items) > 0) {
    cat("Inventory Items and Quantities:\n")
    for (i in 1:length(inventory_items)) {
      cat("Item:", inventory_items[i], "- Quantity:", inventory_quantities[i], "\n")
    }
  } else {
    cat("Inventory is empty.\n")
  }
}

# Function for menu-driven interface
menu <- function() {
  while (TRUE) {
    cat("\nMenu:\n")
    cat("1. Add Item\n")
    cat("2. Update Quantity\n")
    cat("3. remove Inventory\n")
    cat("4. Display Inventory\n")
    cat("5. Exit\n")
    
    choice <- as.integer(readline("Enter your choice: "))
    
    if (choice == 1) {
      item <- readline("Enter item name: ")
      quantity <- as.integer(readline("Enter quantity: "))
      add_item(item, quantity)
    } else if (choice == 2) {
      item <- readline("Enter item name to update quantity: ")
      new_quantity <- as.integer(readline("Enter new quantity: "))
      update_quantity(item, new_quantity)
    } else if (choice == 3) {
      item <- readline("Enter item name to remove: ")
      remove_item(item)
    } else if (choice == 4) {
      display_inventory()
    } else if (choice == 5) {
      cat("Exiting the inventory management system.\n")
      break
    } else {
      cat("Invalid choice. Please enter a valid option.\n")
    }
    
  }
}

# Run the menu-driven interface
menu()
