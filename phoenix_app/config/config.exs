import Config

# Configure the endpoint
config :phoenix_app, PhoenixAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "a_very_long_secret_key_base_that_is_at_least_64_bytes_long_for_security",
  render_errors: [view: PhoenixAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixApp.PubSub,
  live_view: [signing_salt: "secret_salt"]

# Configure logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config
import_config "#{config_env()}.exs"
