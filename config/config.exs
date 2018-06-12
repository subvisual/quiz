use Mix.Config

config :quiz, ecto_repos: [Quiz.Repo]

config :quiz, Quiz.Repo, adapter: Ecto.Adapters.Postgres

config :quiz, QuizWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base:
    "yeyX1J526GC1ezsEHZV1BEcFqjFHFwrXK41n9Vgo3Ce21iBf9B+LLYeh2iLcNNcl",
  render_errors: [view: QuizWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Quiz.PubSub, adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

config :commanded,
  event_store_adapter: Commanded.EventStore.Adapters.EventStore,
  include_execution_result: true

config :commanded_ecto_projections, repo: Quiz.Repo

config :eventstore, EventStore.Storage,
  serializer: Commanded.Serialization.JsonSerializer,
  username: {:system, "POSTGRESQL_USER"},
  password: {:system, "POSTGRESQL_PASSWORD"},
  hostname: {:system, "POSTGRESQL_HOST"},
  pool_size: 10

import_config "#{Mix.env()}.exs"
