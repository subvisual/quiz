defmodule Quiz.Projections.Game do
  use Ecto.Schema

  schema "games" do
    field :uuid, :string
    field :players, {:array, :string}
  end
end
