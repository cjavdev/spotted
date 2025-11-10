# frozen_string_literal: true

require_relative "../lib/spotted"

# p [ENV["SPOTIFY_CLIENT_ID"], ENV["SPOTIFY_CLIENT_SECRET"]]

spotted = Spotted::Client.new(
  # client_id: ENV["SPOTIFY_CLIENT_ID"], # This is the default and can be omitted
  # client_secret: ENV["SPOTIFY_CLIENT_SECRET"] # This is the default and can be omitted
  access_token: "BQBf5N19UpBWZuSJPN7SyHkEMxIAZrJCL3q2eUOfB6E4E6KdIbB2od39X7zP4ElW0e2M8-45q3EGLI9ONeyn83qhIGioyH-f2Yc1QRo1vHOyV63wEOZZ9_OqrBr-xJq5dktOYw33dvs"
)

album = spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")
p album

# p spotted.oauth_2_0_state
# p spotted.authorization_url(
#   redirect_uri: "https://b81d20319dcb.ngrok-free.app/spotify_connections/callback",
#   scope: [
#     "app-remote-control",           # Communicate with the Spotify app on your device.
#     "playlist-read-private",        # Access your private playlists.
#     "playlist-read-collaborative",  # Access your collaborative playlists.
#     "playlist-modify-public",       # Manage your public playlists.
#     "playlist-modify-private",      # Manage your private playlists.
#     "user-library-read",            # Access your saved content.
#     "user-library-modify",          # Manage your saved content.
#     "user-read-private",            # Access your subscription details.
#     "user-read-email",              # Get your real email address.
#     "user-follow-read",             # Access your followers and who you are following.
#     "user-follow-modify",           # Manage your saved content.
#     "user-top-read",                # Read your top artists and content.
#     "user-read-playback-position",  # Read your position in content you have played.
#     "user-read-playback-state",     # Read your currently playing content and Spotify Connect devices information.
#     "user-read-recently-played",    # Access your recently played items.
#     "user-read-currently-playing",  # Read your currently playing content.
#     "user-modify-playback-state",   # Control playback on your Spotify clients and Spotify Connect devices.
#     "ugc-image-upload",             # Upload images to Spotify on your behalf.
#     "streaming"                     # Play content and control playback on your other devices.
#   ].join(" ")
# )
