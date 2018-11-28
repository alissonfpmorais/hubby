defmodule Hubby.Auth.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :avatar, :string
    field :email, :string
    field :name, :string
    field :provider, :string
    field :token, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :avatar, :provider, :token])
    |> validate_required([:name, :email, :avatar, :provider, :token])
    |> unique_constraint(:email)
  end
end
