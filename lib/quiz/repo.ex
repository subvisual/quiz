defmodule Quiz.Repo do
  use Ecto.Repo, otp_app: :quiz

  def init(_, config) do
    updated_config =
      config
      |> Keyword.merge(db_config())

    {:ok, updated_config}
  end

  defp db_config do
    [
      username: os_env!("POSTGRESQL_USER"),
      password: os_env!("POSTGRESQL_PASSWORD"),
      hostname: os_env!("POSTGRESQL_HOST"),
      pool_size: os_env!("POSTGRESQL_POOL_SIZE")
    ]
  end

  def os_env!(name) do
    case System.get_env(name) do
      nil -> raise "OS ENV #{name} not set!"
      value -> value
    end
  end
end
