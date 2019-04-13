defmodule SampleWeb.API.V1.BoardView do
  use SampleWeb, :view
  alias SampleWeb.API.V1.BoardView

  def render("index.json", %{boards: boards}) do
    %{data: render_many(boards, BoardView, "board.json")}
  end

  def render("show.json", %{posts: posts}) do
    %{data: render_many(posts, BoardView, "post.json")}
  end

  def render("board.json", %{board: board}) do
    %{id: board.id,
      title: board.title,
      description: board.description}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      body: post.body
    }
  end
end
