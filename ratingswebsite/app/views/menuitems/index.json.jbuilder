json.array!(@menuitems) do |menuitem|
  json.extract! menuitem, :id, :name, :mtype, :mcategory, :description, :price, :restaurantID
  json.url menuitem_url(menuitem, format: :json)
end
