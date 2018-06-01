defmodule Quiz.Commands.CreateGameTest do
  use ExUnit.Case

  alias Quiz.Commands.CreateGame

  describe "valid? for :players" do
    test "is valid with 3 players" do
      cmd = %CreateGame{id: 1, players: [1, 2, 3]}

      assert Vex.valid?(cmd)
    end

    test "is valid with 4 players" do
      cmd = %CreateGame{id: 1, players: [1, 2, 3, 4]}

      assert Vex.valid?(cmd)
    end

    test "is invalid with 2 players" do
      cmd = %CreateGame{id: 1, players: [1, 2]}

      refute Vex.valid?(cmd)
    end

    test "is invalid with 5 players" do
      cmd = %CreateGame{id: 1, players: [1, 2, 3, 4, 5]}

      refute Vex.valid?(cmd)
    end
  end

  describe "valid? for :id" do
    test "is invalid without an id" do
      cmd = %CreateGame{id: nil, players: [1, 2, 3, 4]}

      refute Vex.valid?(cmd)
    end

    test "is valid with an id" do
      cmd = %CreateGame{id: UUID.uuid4(), players: [1, 2, 3, 4]}

      assert Vex.valid?(cmd)
    end
  end
end
