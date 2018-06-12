defmodule Quiz.Events do
  defmodule GameStarted, do: defstruct([:uuid, :players])
end
