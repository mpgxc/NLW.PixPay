defmodule Pixpay.Repo do
  use Ecto.Repo,
    otp_app: :pixpay,
    adapter: Ecto.Adapters.Postgres
end
