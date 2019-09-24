Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, Rails.application.credentials.dig(:google_auth, :client_id), Rails.application.credentials.dig(:google_auth, :client_secret)
end
