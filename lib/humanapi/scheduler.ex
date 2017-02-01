defmodule Talky.Humanapi.Scheduler do
  alias Talky.Humanapi.Source
  def schedule do
    for source <- fetch_all() do

    end
  end

  defp fetch_all do
    humen = Talky.Repo.all(Talky.Human)
    limit = 3
    for human <- humen do
      response = HTTPotion.get "https://api.humanapi.co/v1/human/activities/summaries",
                 query: %{access_token: human.access_token, limit: limit}
      Poison.decode! response.body, as: [%Source{}]
    end
  end
end

