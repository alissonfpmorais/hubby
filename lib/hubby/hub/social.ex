defmodule Hubby.Hub.Social do
  use Ecto.Schema
  import Ecto.Changeset


  schema "socials" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(social, attrs) do
    social
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
