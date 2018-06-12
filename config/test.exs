use Mix.Config

config :quiz, QuizWeb.Endpoint,
  http: [port: 4001],
  server: false

config :quiz, Quiz.Repo, pool: Ecto.Adapters.SQL.Sandbox

config :logger, level: :warn

config :commanded, event_store_adapter: Commanded.EventStore.Adapters.InMemory

config :eventstore, EventStore.Storage, database: "quiz_test"

config :quiz, Quiz.Repo, database: "quiz_test"
