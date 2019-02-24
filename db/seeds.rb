count = Product.count

(125 - count).times do
  Product.create!(
    name: Faker::Beer.name,
    price: 5 + rand(20)
  )
end
