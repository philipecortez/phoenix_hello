# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hello,
  ecto_repos: [Hello.Repo]

# Configures the endpoint
config :hello, Hello.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fFQYBP2WUf8Wr7XSO7N7FkoThJvZ02Nz0t5JCUvWhpdo3mvJXqsqi5sGoYd0/jB2",
  render_errors: [view: Hello.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hello.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
