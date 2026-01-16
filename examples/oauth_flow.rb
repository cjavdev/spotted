# frozen_string_literal: true

# Example: OAuth Authorization Flow with Spotted
#
# This example demonstrates how to use the Spotted::Auth class
# to implement OAuth 2.0 authorization code flow with Spotify.

require "spotted"

# Step 1: Initialize the Auth client with your app credentials
auth = Spotted::Auth.new(
  client_id: ENV["SPOTIFY_CLIENT_ID"],
  client_secret: ENV["SPOTIFY_CLIENT_SECRET"]
)

# Step 2: Generate the authorization URL
# This URL should be presented to the user for authorization
authorization_url = auth.authorization_url(
  redirect_uri: "http://localhost:3000/callback",
  scope: %w[
    user-read-private
    user-read-email
    playlist-read-private
  ],
  state: SecureRandom.hex(16) # CSRF protection
)

puts "Visit this URL to authorize:"
puts authorization_url

# Step 3: After the user authorizes and is redirected to your callback URL,
# extract the 'code' parameter from the callback URL
#
# In a web application, this would happen in your callback route:
# code = params[:code]

# For this example, we'll simulate receiving a code
puts "\nAfter authorization, you'll receive a code in the callback."
print "Enter the authorization code: "
code = gets.chomp

# Step 4: Exchange the authorization code for an access token
begin
  credentials = auth.exchange_authorization_code(
    code: code,
    redirect_uri: "http://localhost:3000/callback"
  )

  puts("\n✓ Successfully obtained credentials!")
  puts("Access Token: #{credentials[:access_token][0..20]}...")
  puts("Token Type: #{credentials[:token_type]}")
  puts("Expires In: #{credentials[:expires_in]} seconds")
  puts("Refresh Token: #{credentials[:refresh_token][0..20]}...")
  puts("Scope: #{credentials[:scope]}")

  # Step 5: Use the access token to create a Spotted::Client
  client = Spotted::Client.new(access_token: credentials[:access_token])

  # Now you can make API requests
  user_info = client.me.retrieve
  puts("\nUser Info:")
  puts("Display Name: #{user_info.display_name}")
  puts("Email: #{user_info.email}")
  puts("Country: #{user_info.country}")

  # Step 6: Later, when the access token expires, refresh it
  puts("\n--- Refreshing Access Token ---")
  new_credentials = auth.refresh_access_token(
    refresh_token: credentials[:refresh_token]
  )

  puts("✓ Token refreshed!")
  puts("New Access Token: #{new_credentials[:access_token][0..20]}...")

  # Create a new client with the refreshed token
  refreshed_client = Spotted::Client.new(access_token: new_credentials[:access_token])
rescue Spotted::APIError => e
  puts("\n✗ Error: #{e.message}")
  puts("Status Code: #{e.status_code}")
  puts("Response Body: #{e.body}")
end
