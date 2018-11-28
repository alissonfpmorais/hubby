defmodule Hubby.Hub.Info do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hubby.Auth.User

  schema "infos" do
    field :age, :integer
    field :gender, :integer
    field :is_available, :boolean, default: false
    field :phone, :string
    # field :user_id, :id
    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(info, attrs) do
    info
    |> cast(attrs, [:age, :phone, :gender, :is_available, :user_id])
    |> validate_required([:gender, :is_available])
    |> cast_assoc(:user)
  end
end
