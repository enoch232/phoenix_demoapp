# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :demoapp,
  ecto_repos: [Demoapp.Repo]

# Configures the endpoint
config :demoapp, Demoapp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "79N8H5rjAHh/XXBO5EOGmeVN7BVEm8JFqU4o9aMh120p9tF5j1YnMv1/kOZg1dBd",
  render_errors: [view: Demoapp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Demoapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
