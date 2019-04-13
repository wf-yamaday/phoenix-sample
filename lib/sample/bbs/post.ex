defmodule Sample.Bbs.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :title, :string
    belongs_to :board, Sample.Bbs.Board

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:body, :title, :board_id])
    |> validate_required([:body, :title, :board_id])
  end
end
