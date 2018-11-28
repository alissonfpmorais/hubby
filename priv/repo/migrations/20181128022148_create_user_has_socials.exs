defmodule Hubby.Repo.Migrations.CreateUserHasSocials do
  use Ecto.Migration

  def change do
    create table(:user_has_socials) do
      add :url, :string, null: false
      add :user_id, references(:users, on_delete: :delete_all)
      add :social_id, references(:socials, on_delete: :delete_all)

      timestamps()
    end

    create index(:user_has_socials, [:user_id])
    create index(:user_has_socials, [:social_id])
  end
end
