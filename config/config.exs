# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :octocat_clash,
  ecto_repos: [OctocatClash.Repo]

# Configures the endpoint
config :octocat_clash, OctocatClash.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "I09Plxo9Z7o/Ls0gAV36LuWD2T68785J6tc07lQSO1+WqjBWfdk3iXV/VxvBHAoH",
  render_errors: [view: OctocatClash.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OctocatClash.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
