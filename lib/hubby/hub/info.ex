defmodule Hubby.Hub.Info do
  use Ecto.Schema
  import Ecto.Changeset


  schema "infos" do
    field :age, :integer
    field :gender, :integer
    field :is_available, :boolean, default: false
    field :phone, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(info, attrs) do
    info
    |> cast(attrs, [:age, :phone, :gender, :is_available])
    |> validate_required([:age, :phone, :gender, :is_available])
  end
end
