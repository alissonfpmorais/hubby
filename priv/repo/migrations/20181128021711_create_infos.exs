defmodule Hubby.Repo.Migrations.CreateInfos do
  use Ecto.Migration

  def change do
    create table(:infos) do
      add :age, :integer
      add :phone, :string
      add :gender, :integer, null: false
      add :is_available, :boolean, default: false, null: false
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

    create index(:infos, [:user_id])
  end
end
