defmodule Quiz.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(QuizWeb.Endpoint, [])
    ]

    opts = [strategy: :one_for_one, name: Quiz.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    QuizWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
