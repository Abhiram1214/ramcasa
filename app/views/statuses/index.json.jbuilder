json.array!(@statuses) do |status|
  json.extract! status, :id, :context
  json.url status_url(status, format: :json)
end
