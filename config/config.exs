# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :loopa_chat,
  ecto_repos: [LoopaChat.Repo]

# Configures the endpoint
config :loopa_chat, LoopaChat.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3XL8J7T5M1HsHSoq/4Zm+A35huQLMevw2/zvLh4wt0W+RHOQ6zfn5pJrAHKzPfRa",
  render_errors: [view: LoopaChat.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LoopaChat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
