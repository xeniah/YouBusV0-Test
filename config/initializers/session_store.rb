# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_YouBus_session',
  :secret      => '38e37508cb959bece1d057f9ec2a615a85a846be14caf1159b2abc43984963815ecb6e05ea1f7bf01f2eeac91d8eef25b5a6163895c2c06087dbd3e0f1df0262'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
