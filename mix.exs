defmodule Quiz.Mixfile do
  use Mix.Project

  def project do
    [
      app: :quiz,
      version: "0.0.1",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application do
    [
      mod: {Quiz.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:ecto, "~> 2.1"},
      {:phoenix, "~> 1.3.2"},
      {:phoenix_ecto, "~> 3.0"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_html, "~> 2.10"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:commanded, "~> 0.16"},
      {:commanded_eventstore_adapter, "~> 0.3"},
      {:eventstore,
       github: "commanded/eventstore", ref: "792a4a1", override: true},
      {:commanded_ecto_projections, "~> 0.6"},
      {:uuid, "~> 1.1"},
      {:vex, "~> 0.7.0"}
    ]
  end

  defp aliases do
    []
  end
end
