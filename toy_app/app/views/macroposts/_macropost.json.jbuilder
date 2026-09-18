json.extract! macropost, :id, :content, :profile_id, :created_at, :updated_at
json.url macropost_url(macropost, format: :json)
