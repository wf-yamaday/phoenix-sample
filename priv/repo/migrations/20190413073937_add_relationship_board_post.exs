defmodule Sample.Repo.Migrations.AddRelationshipBoardPost do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add :board_id, :integer, :references(:boards)
      timestamps()
    end
  end
end
