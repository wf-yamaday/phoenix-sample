defmodule SampleWeb.API.V1.UserController do
    use SampleWeb, :controller

    alias Sample.Accounts
    alias Sample.Accounts.User

    action_fallback SampleWeb.FallbackController

    def index(conn, _params) do
    end

    def show(conn, params) do
        if user =  Accounts.serach(params) do
            render(conn, "user.json", user: user)
        else
            conn
            |> put_view(SampleWeb.ErrorView)
            |> render("404.json")
        end
    end

end