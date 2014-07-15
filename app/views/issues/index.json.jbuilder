json.array!(@issues) do |issue|
  json.extract! issue, :id, :name, :context
  json.url issue_url(issue, format: :json)
end
