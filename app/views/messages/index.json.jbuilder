json.array!(@messages) do |message|
  json.extract! message, :id, :user_id, :post_id, :message
  json.url message_url(message, format: :json)
end
