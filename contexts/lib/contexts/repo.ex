defmodule Contexts.Repo do
  use Ecto.Repo,
    otp_app: :contexts,
    adapter: Ecto.Adapters.Postgres
end
