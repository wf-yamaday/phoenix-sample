defmodule SampleWeb.API.V1.BoardView do
  use SampleWeb, :view

  alias SampleWeb.API.V1.BoardView
  alias SampleWeb.API.V1.PostView

  def render("index.json", %{boards: boards}) do
    %{data: render_many(boards, BoardView, "board.json")}
  end

  def render("post_index.json", %{posts: posts}) do
    %{data: render_many(posts, PostView, "post.json")}
  end

  def render("show.json", %{board: board}) do
    %{data: render_one(board, BoardView, "board.json")}
  end


  def render("board.json", %{board: board}) do
    %{id: board.id,
      title: board.title,
      description: board.description}
  end

end
