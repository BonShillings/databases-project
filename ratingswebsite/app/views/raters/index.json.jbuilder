json.array!(@raters) do |rater|
  json.extract! rater, :id, :email, :name, :join_date, :rtype, :reputation
  json.url rater_url(rater, format: :json)
end
