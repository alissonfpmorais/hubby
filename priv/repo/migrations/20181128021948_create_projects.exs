defmodule Hubby.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :name, :string, null: false
      add :description, :string, null: false
      add :url, :string
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

    create index(:projects, [:user_id])
  end
end
