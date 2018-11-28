defmodule Hubby.Repo do
  use Ecto.Repo,
    otp_app: :hubby,
    adapter: Ecto.Adapters.Postgres
end
