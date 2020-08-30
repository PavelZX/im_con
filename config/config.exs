# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :im_con,
  ecto_repos: [ImCon.Repo]

# Configures the endpoint
config :im_con, ImConWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/gmiwO3AuwG+b2a6aqF3RrFyjuNLUbk/qaJgvdOo668kfEj1tpG2obIPBMYJyr9d",
  render_errors: [view: ImConWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ImCon.PubSub,
  live_view: [signing_salt: "k5JbuCM7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
