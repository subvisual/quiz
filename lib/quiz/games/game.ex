defmodule Quiz.Games.Game do
  defstruct [:id, players: []]

  alias Quiz.{Commands, Events}

  def execute(%{id: nil} = _game, %Commands.CreateGame{id: id}) do
    %Events.GameCreated{id: id}
  end

  def apply(%{} = game, %Events.GameCreated{} = game_created) do
    %__MODULE__{
      id: game_created.id,
      players: []
    }
  end
end
