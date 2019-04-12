defmodule SampleWeb.BoardController do
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

  def show(conn, %{"id" => id}) do
    board = Bbs.get_board!(id)
    render(conn, "show.json", board: board)
  end

  def update(conn, %{"id" => id, "board" => board_params}) do
    board = Bbs.get_board!(id)

    with {:ok, %Board{} = board} <- Bbs.update_board(board, board_params) do
      render(conn, "show.json", board: board)
    end
  end

  def delete(conn, %{"id" => id}) do
    board = Bbs.get_board!(id)

    with {:ok, %Board{}} <- Bbs.delete_board(board) do
      send_resp(conn, :no_content, "")
    end
  end
end
