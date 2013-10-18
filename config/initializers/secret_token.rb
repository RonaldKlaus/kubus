# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
KubusApp::Application.config.secret_key_base = 'f23ccee7991b36cf7aba304225696f3831ba6b11ee9b4300b684b8dd56abb93fcdf2578a3f533c4b9984bc5d3204a1d63d218c7f9c0fddc3c24dd3b1941d1af8'
