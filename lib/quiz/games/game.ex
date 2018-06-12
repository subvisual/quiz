defmodule Quiz.Games.Game do
  defstruct [:uuid, players: []]

  alias Quiz.{Commands, Events}

  def execute(%{uuid: nil} = _game, %Commands.StartGame{
        uuid: uuid,
        players: players
      }) do
    %Events.GameStarted{uuid: uuid, players: players}
  end

  def apply(%{} = game, %Events.GameStarted{} = game_created) do
    %__MODULE__{
      uuid: game_created.uuid,
      players: game_created.players
    }
  end
end
