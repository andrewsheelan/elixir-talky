# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :talky,
  ecto_repos: [Talky.Repo]

config :ex_admin,
  repo: Talky.Repo,
  module: Talky,
  modules: [
    Talky.ExAdmin.Dashboard,
    Talky.ExAdmin.User,
    Talky.ExAdmin.DeviceActivity,
  ]

# Configures the endpoint
config :talky, Talky.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VrHHHUwrr0OaDctICmQg914oGuP84lLeu4y2gdKf4qTB/JYRVjoAK2t/4+bM8APg",
  render_errors: [view: Talky.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Talky.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


# Quantum scheduler configuration
config :quantum, cron: [
   "* * * * *": {Talky.Humanapi.Scheduler, :schedule}
]


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :xain, :after_callback, {Phoenix.HTML, :raw}

