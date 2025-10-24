# frozen_string_literal: true

require_relative "../lib/spotted"

p [ENV["SPOTIFY_CLIENT_ID"], ENV["SPOTIFY_CLIENT_SECRET"]]

spotted = Spotted::Client.new(
  client_id: ENV["SPOTIFY_CLIENT_ID"], # This is the default and can be omitted
  client_secret: ENV["SPOTIFY_CLIENT_SECRET"] # This is the default and can be omitted
)

album = spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")

p album