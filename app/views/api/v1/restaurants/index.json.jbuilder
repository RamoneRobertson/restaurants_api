# app/views/api/v1/restaurants/index.json.jbuilder

json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
end
