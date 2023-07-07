require 'faker'

# Seed Restaurants
100.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address
  )
end

# Seed Pizzas
100.times do
  Pizza.create(
    name: Faker::Food.dish,
    ingredients: Faker::Food.ingredient
  )
end

# Seed RestaurantPizzas
Restaurant.all.each do |restaurant|
  Pizza.all.sample(3).each do |pizza|
    RestaurantPizza.create(
      restaurant: restaurant,
      pizza: pizza,
      price: Faker::Number.between(from: 1, to: 30)
    )
  end
end
