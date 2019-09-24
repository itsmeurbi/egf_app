Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    Rails.application.credentials.dig(:auth0, :google_client_id),
    Rails.application.credentials.dig(:auth0, :google_client_secret),
    Rails.application.credentials.dig(:auth0, :google_domain),
    callback_path: '/auth/auth0/callback',
    authorize_params: {
      scope: 'openid profile'
    }
  )
end