# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mysite,
  ecto_repos: [Mysite.Repo]

# Configures the endpoint
config :mysite, Mysite.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DWbzobDNtcSVIj+nx2UZ1rNaR6YAub4s+FqABxybsu/lyGNrv7QEaPAo/b5+GBE9",
  render_errors: [view: Mysite.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mysite.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
