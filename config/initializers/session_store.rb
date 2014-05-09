# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_djjohal_session',
  :secret      => 'dad32a6e2c2dc63951e8c1b8d0d51250c71fbe3d688127877d73e88fe9167b959c40854726f97d8f070a34096c8cc425f665f0714bbbddc4968cf9626d1d155f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
