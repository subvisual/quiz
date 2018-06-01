defmodule Quiz.Games.Game do
  defstruct [:id, players: []]

  alias Quiz.{Commands, Events}

  def execute(%{id: nil} = _game, %Commands.CreateGame{id: id, players: players}) do
    %Events.GameCreated{id: id, players: players}
  end

  def apply(%{} = game, %Events.GameCreated{} = game_created) do
    %__MODULE__{
      id: game_created.id,
      players: game_created.players
    }
  end
end
