defmodule Talky.Repo do
  use Ecto.Repo, otp_app: :talky
  use Scrivener, page_size: 10
end
