defmodule GameOfWar.Repo do
  use Ecto.Repo,
    otp_app: :game_of_war,
    adapter: Ecto.Adapters.Postgres
end
