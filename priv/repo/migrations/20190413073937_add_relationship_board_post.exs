defmodule Sample.Repo.Migrations.AddRelationshipBoardPost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :body, :string
      add :board_id, references(:boards, on_delete: :delete_all), null: false
      
      timestamps()
    end
  end
end
