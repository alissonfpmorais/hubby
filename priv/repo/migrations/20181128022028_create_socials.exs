defmodule Hubby.Repo.Migrations.CreateSocials do
  use Ecto.Migration

  def change do
    create table(:socials) do
      add :name, :string, null: false

      timestamps()
    end

  end
end
