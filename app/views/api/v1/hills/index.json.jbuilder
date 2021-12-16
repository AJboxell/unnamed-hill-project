json.array! @hills do |hill|
  json.extract! hill, :id, :name
end
