defmodule Talky.DeviceActivity do
  use Talky.Web, :model

  schema "device_activities" do
    field :duration, {:array, :integer}
    field :details, {:array, :map}
    field :assigned_date, :date
    belongs_to :user, Talky.User

    timestamps(inserted_at: :created_at)
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:duration, :details, :assigned_date])
    |> validate_required([:duration, :details, :assigned_date])
  end
end
