defmodule Sample.Repo do
  use Ecto.Repo,
    otp_app: :sample,
    adapter: Ecto.Adapters.MySQL
end
