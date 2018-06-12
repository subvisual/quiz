defmodule Quiz.Commands do
  defmodule StartGame do
    defstruct [:uuid, players: []]

    use Vex.Struct

    validates :uuid, presence: true
    validates :players, length: [min: 3, max: 4]
  end
end
