defmodule Hubby.Hub.UserHasSocial do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hubby.Auth.User
  alias Hubby.Hub.Social

  schema "user_has_socials" do
    field :url, :string
    # field :user_id, :id
    # field :social_id, :id
    belongs_to :user, User
    belongs_to :social, Social

    timestamps()
  end

  @doc false
  def changeset(user_has_social, attrs) do
    user_has_social
    |> cast(attrs, [:url, :user_id, :social_id])
    |> validate_required([:url])
    |> cast_assoc(:user)
    |> cast_assoc(:social)
  end
end
