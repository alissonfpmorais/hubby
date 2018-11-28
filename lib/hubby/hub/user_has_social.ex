defmodule Hubby.Hub.UserHasSocial do
  use Ecto.Schema
  import Ecto.Changeset


  schema "user_has_socials" do
    field :url, :string
    field :user_id, :id
    field :social_id, :id

    timestamps()
  end

  @doc false
  def changeset(user_has_social, attrs) do
    user_has_social
    |> cast(attrs, [:url])
    |> validate_required([:url])
  end
end
