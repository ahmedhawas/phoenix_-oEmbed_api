defmodule PhxOembed.Repo.Migrations.CreateCard do
  use Ecto.Migration

  def change do
    create table(:cards) do

      timestamps()
    end

  end
end
