restaurants_data = [
  {
    name: "Sottocasa NYC",
    address: "298 Atlantic Ave, Brooklyn, NY 11201"
  },
  {
    name: "PizzArte",
    address: "69 W 55th St, New York, NY 10019"
  }
]

# Seed data for Pizzas
pizzas_data = [
  {
    name: "Cheese",
    ingredients: "Dough, Tomato Sauce, Cheese"
  },
  {
    name: "Pepperoni",
    ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"
  }
]

# Create Restaurants
restaurants_data.each do |restaurant_data|
  Restaurant.create(restaurant_data)
end

# Create Pizzas
pizzas_data.each do |pizza_data|
  Pizza.create(pizza_data)
end
