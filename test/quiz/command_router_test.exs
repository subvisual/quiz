defmodule Quiz.CommandRouterTest do
  use Quiz.DataCase

  alias Quiz.{CommandRouter, Commands, Events}

  test "publishes valid StartGame events" do
    %Commands.StartGame{uuid: UUID.uuid4(), players: [1, 2, 3, 4]}
    |> CommandRouter.dispatch()

    assert_receive_event(Events.GameStarted, fn event ->
      assert event
    end)
  end

  test "3publishes valid StartGame events" do
    %Commands.StartGame{uuid: UUID.uuid4(), players: [1, 2, 3, 4]}
    |> CommandRouter.dispatch()

    assert_receive_event(Events.GameStarted, fn event ->
      assert event
    end)
  end

  test "2publishes valid StartGame events" do
    %Commands.StartGame{uuid: UUID.uuid4(), players: [1, 2, 3, 4]}
    |> CommandRouter.dispatch()

    assert_receive_event(Events.GameStarted, fn event ->
      assert event
    end)
  end

  test "does not public invalid StartGame events" do
    %Commands.StartGame{uuid: UUID.uuid4(), players: [1, 2, 3]}
    |> CommandRouter.dispatch()
  end
end
