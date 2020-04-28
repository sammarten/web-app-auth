# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :auth_app, AuthAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "spSJGAFRZ1ZCwW1jCn97SY46MshtyIuqGu9AtUmH2dU1uOjnHJuZRJ5rZ3RfZOwn",
  render_errors: [view: AuthAppWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: AuthApp.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "hk2uidWx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
