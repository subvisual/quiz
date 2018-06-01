defmodule Quiz.DataCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      import Commanded.Assertions.EventAssertions
    end
  end

  # setup do
  #   {:ok, event_store} = Commanded.EventStore.Adapters.InMemory.start_link({})
  #   Application.ensure_all_started(:quiz)

  #   on_exit(fn ->
  #     Application.stop(:quiz)
  #     shutdown(event_store)
  #   end)
  # end

  # def shutdown(pid) when is_pid(pid) do
  #   Process.unlink(pid)
  #   Process.exit(pid, :shutdown)

  #   ref = Process.monitor(pid)
  #   assert_receive {:DOWN, ^ref, _, _, _}, 5_000
  # end
end
