defmodule Quiz.CommandRouterTest do
  use Quiz.DataCase

  alias Quiz.{CommandRouter, Commands, Events}

  test "publishes valid CreateGame events" do
    %Commands.CreateGame{id: UUID.uuid4(), players: [1, 2, 3, 4]}
    |> CommandRouter.dispatch()

    assert_receive_event(Events.GameCreated, fn event ->
      IO.inspect(event)
      assert event
    end)
  end

  test "does not public invalid CreateGame events" do
    %Commands.CreateGame{id: UUID.uuid4(), players: [1, 2, 3]}
    |> CommandRouter.dispatch()
    |> IO.inspect()
  end
end
