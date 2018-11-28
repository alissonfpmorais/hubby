defmodule Hubby.Hub.Project do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hubby.Auth.User

  schema "projects" do
    field :description, :string
    field :name, :string
    field :url, :string
    # field :user_id, :id
    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:name, :description, :url])
    |> validate_required([:name, :description])
    |> cast_assoc(:user)
  end
end
