defmodule Quiz.Games.Projector do
  use Commanded.Projections.Ecto,
    name: "game_projections",
    repo: Quiz.Repo

  alias Quiz.{
    Events,
    Projections.Game
  }

  project %Events.GameStarted{uuid: uuid, players: players}, _metadata do
    Ecto.Multi.insert(multi, :new_game, %Game{uuid: uuid, players: players})
  end
end
