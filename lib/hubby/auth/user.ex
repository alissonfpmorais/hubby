defmodule Hubby.Auth.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hubby.Hub.{Info, Tech, Project, Social, UserHasSocial}

  schema "users" do
    field :avatar, :string
    field :email, :string
    field :name, :string
    field :provider, :string
    field :token, :string
    has_one :info, Info
    has_many :projects, Project
    has_many :techs, Tech
    has_many :links, UserHasSocial
    many_to_many :socials, Social, join_through: UserHasSocial

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :avatar, :provider, :token])
    |> validate_required([:name, :email, :avatar, :provider, :token])
    |> unique_constraint(:email)
    |> cast_assoc(:info)
    |> cast_assoc(:projects)
    |> cast_assoc(:techs)
    |> cast_assoc(:links)
    |> cast_assoc(:socials)
  end
end
