defmodule Quiz.Commands do
  defmodule CreateGame do
    defstruct [:id, players: []]

    use Vex.Struct

    validates :id, presence: true
    validates :players, length: [min: 3, max: 4]
  end
end
