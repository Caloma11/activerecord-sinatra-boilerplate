5.times do
  Restaurant.create(
    name: "Restaurant #{rand(23)}",
    city: ["Paris", "London", "Rio", "Berlin"].sample
  )
end
