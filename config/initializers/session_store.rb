# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dtrac_session',
  :secret      => '55e722b9a49422beaff514450d8d3d4ae483cdc1d2455459de8e25682054e02a0b5752527a55154541275050f25098a65c8f08d03ea81511daf3d3def0fd03b5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
