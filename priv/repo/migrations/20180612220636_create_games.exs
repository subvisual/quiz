defmodule Quiz.Repo.Migrations.CreateGames do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :uuid, :string, required: true
      add :players, {:array, :string}, required: true
    end
  end
end
