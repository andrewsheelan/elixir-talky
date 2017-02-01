defmodule Talky.HumanTest do
  use Talky.ModelCase

  alias Talky.Human

  @valid_attrs %{access_token: "some content", human_api_id: "some content", public_token: "some content", sources: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Human.changeset(%Human{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Human.changeset(%Human{}, @invalid_attrs)
    refute changeset.valid?
  end
end
