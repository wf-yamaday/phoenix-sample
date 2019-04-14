defmodule SampleWeb.API.V1.BoardController do
  use SampleWeb, :controller

  alias Sample.Bbs
  alias Sample.Bbs.Board

  action_fallback SampleWeb.FallbackController

  def index(conn, _params) do
    boards = Bbs.list_boards()
    render(conn, "index.json", boards: boards)
  end

  def create(conn, %{"board" => board_params}) do
    with {:ok, %Board{} = board} <- Bbs.create_board(board_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.board_path(conn, :show, board))
      |> render("show.json", board: board)
    end
  end

  def show(conn, %{"id" => board_id}) do
    posts = Bbs.get_posts_by_board_id!(board_id)
    render(conn, "post_index.json", posts: posts)
  end

  def update(conn, %{"id" => id, "board" => board_params}) do
  end

  def delete(conn, %{"id" => id}) do
  end
end
