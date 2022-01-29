json.array! @products do |product|
  json.extract! product, :id, :name, :price, :max_price, :min_price, :percent_change
end