use Mix.Config

config :quiz, QuizWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    yarn: [
      "run",
      "watch",
      cd: Path.expand("../assets", __DIR__)
    ]
  ]

config :quiz, QuizWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{lib/quiz_web/views/.*(ex)$},
      ~r{lib/quiz_web/templates/.*(eex)$}
    ]
  ]

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :eventstore, EventStore.Storage, database: "quiz_test"

config :quiz, Quiz.Repo, database: "quiz_test"
