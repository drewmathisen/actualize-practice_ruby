require 'http'

# city = "aurora"

# response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=metric").parse(:json)

def forecast(input_city, input_units)

  city = input_city
  units = input_units
  response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}").parse(:json)
  p response["main"]["temp_min"]
  p response["main"]["temp_max"]
  p response["weather"][0]["description"]
  p response["wind"]["speed"]

end 

units = "metric"
p "Please input a city"
city = gets.chomp 

p "If you would like to see the forecast, please put F. If you would like to change the units, please put U "
input = gets.chomp 

if input == "F"
  forecast(city, units)
# else input == "U"
#   puts "Input C for celsius, input F for fahrenheit, input K for kelvin."
#     if gets.chomp == "C"
#       units = "metric"
#     elsif gets.chomp == "F"
#       units = "imperial"
#     elsif gets.chomp == "K"
#       units = "standard"
#     else
#       puts "I don't understand"
#     end
end


p units 






