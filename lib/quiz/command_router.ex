defmodule Quiz.CommandRouter do
  use Commanded.Commands.Router

  alias Quiz.{Commands, Games.Game}

  middleware Quiz.Middleware.Validation
  identify Game, by: :uuid
  dispatch [Commands.StartGame], to: Game
end
