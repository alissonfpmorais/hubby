defmodule Hubby.Hub.Tech do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hubby.Auth.User

  schema "techs" do
    field :name, :string
    field :skill_level, :integer
    # field :user_id, :id
    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(tech, attrs) do
    tech
    |> cast(attrs, [:name, :skill_level, :user_id])
    |> validate_required([:name, :skill_level])
    |> cast_assoc(:user)
  end
end
