require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

require 'pry-byebug'

get "/" do

  @restaurants = Restaurant.all

  # calculate_dollar_price_today()

  erb :index
end


get "/restaurants/:id" do
  restaurant_id = params[:id]

  @restaurant = Restaurant.find(restaurant_id)

  erb :show

end


post "/restaurants" do

 new_restaurant = Restaurant.new(
    name: params["name"],
    city: params["city"]
  )

 new_restaurant.save


 redirect '/'

end
