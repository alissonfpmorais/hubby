defmodule Hubby.Hub.Social do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hubby.Auth.User
  alias Hubby.Hub.UserHasSocial

  schema "socials" do
    field :name, :string
    many_to_many :users, User, join_through: UserHasSocial

    timestamps()
  end

  @doc false
  def changeset(social, attrs) do
    social
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> cast_assoc(:users)
  end
end
