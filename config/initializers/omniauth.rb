OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1561132810869922', 'fcefd983f102efa91a0b9f21c458652e', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end
