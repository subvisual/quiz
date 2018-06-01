defmodule Quiz.CommandRouter do
  use Commanded.Commands.Router

  alias Quiz.{Commands, Games.Game}

  middleware(Quiz.Middleware.Validation)
  identify(Game, by: :id)
  dispatch [Commands.CreateGame], to: Game
end
