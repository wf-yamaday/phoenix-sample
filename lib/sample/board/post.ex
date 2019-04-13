defmodule Sample.Board.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "blog_posts" do
    field :board_id, :integer
    field :body, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:body, :board_id])
    |> validate_required([:body, :board_id])
  end
end
