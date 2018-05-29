use Mix.Config

config :quiz, QuizWeb.Endpoint,
  http: [port: 4001],
  server: false

config :logger, level: :warn
