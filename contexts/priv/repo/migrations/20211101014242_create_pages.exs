defmodule Contexts.Repo.Migrations.CreatePages do
  use Ecto.Migration

  def change do
    create table(:pages) do
      add :title, :string
      add :body, :string
      add :views, :integer

      timestamps()
    end

  end
end
