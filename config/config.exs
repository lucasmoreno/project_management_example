# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :project_management_example,
  ecto_repos: [ProjectManagementExample.Repo]

# Configures the endpoint
config :project_management_example, ProjectManagementExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5whYJ/bMQjznxG7/ZN5aRucB27+Zu0d9SQEg+7BMLkDfZSFgx+Ry6UoDTTtRbSg5",
  render_errors: [view: ProjectManagementExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ProjectManagementExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
