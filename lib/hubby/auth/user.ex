defmodule Hubby.Auth.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hubby.Hub.{Info, Tech, Project, Social, UserHasSocials}

  schema "users" do
    field :avatar, :string
    field :email, :string
    field :name, :string
    field :provider, :string
    field :token, :string
    has_one :info, Info
    has_many :project, Project
    has_many :tech, Tech
    many_to_many :social, Social, join_through: UserHasSocial

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :avatar, :provider, :token])
    |> validate_required([:name, :email, :avatar, :provider, :token])
    |> unique_constraint(:email)
    |> cast_assoc(:info)
    |> cast_assoc(:project)
    |> cast_assoc(:tech)
    |> cast_assoc(:social)
  end
end
