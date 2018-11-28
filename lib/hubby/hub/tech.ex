defmodule Hubby.Hub.Tech do
  use Ecto.Schema
  import Ecto.Changeset


  schema "techs" do
    field :name, :string
    field :skill_level, :integer
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(tech, attrs) do
    tech
    |> cast(attrs, [:name, :skill_level])
    |> validate_required([:name, :skill_level])
  end
end
