defmodule Hubby.Hub.Social do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hubby.Auth.User

  schema "socials" do
    field :name, :string
    many_to_many :user, User, join_through: UserHasSocial

    timestamps()
  end

  @doc false
  def changeset(social, attrs) do
    social
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> cast_assoc(:user)
  end
end
