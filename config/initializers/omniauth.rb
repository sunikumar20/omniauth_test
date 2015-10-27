Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1642614805951163', 'dd27f36694aacc0c3cd885570e27a6e4'
end