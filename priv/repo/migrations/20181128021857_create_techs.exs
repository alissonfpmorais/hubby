defmodule Hubby.Repo.Migrations.CreateTechs do
  use Ecto.Migration

  def change do
    create table(:techs) do
      add :name, :string, null: false
      add :skill_level, :integer, null: false
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

    create index(:techs, [:user_id])
  end
end
