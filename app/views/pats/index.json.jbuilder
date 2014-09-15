json.array!(@pats) do |pat|
  json.extract! pat, :id, :firstname, :lastname, :number
  json.url pat_url(pat, format: :json)
end
