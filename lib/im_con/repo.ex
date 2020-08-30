defmodule ImCon.Repo do
  use Ecto.Repo,
    otp_app: :im_con,
    adapter: Ecto.Adapters.Postgres
end
