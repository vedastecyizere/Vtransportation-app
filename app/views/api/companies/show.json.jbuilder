json.name @company.name 
json.description @company.description
json.email @company.email
json.phone_number @company.phone_number
json.image @company.images.first.url 
json.trips @company.trips.each do |trip|
  json.origin trip.origin.name 
  json.destination trip.destination.name
  json.price trip.price
  json.duration trip.duration
  json.number_person trip.number_person
  json.departure trip.departure.time
end 
