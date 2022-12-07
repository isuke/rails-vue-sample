
json.array! @users do |user|
  json.first_name  user[:first_name]
  json.family_name user[:family_name]
end
