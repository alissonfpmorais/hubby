defmodule Hubby.Hub.Project do
  use Ecto.Schema
  import Ecto.Changeset


  schema "projects" do
    field :description, :string
    field :name, :string
    field :url, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:name, :description, :url])
    |> validate_required([:name, :description, :url])
  end
end
