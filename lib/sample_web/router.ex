defmodule SampleWeb.Router do
  use SampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SampleWeb.API do
    pipe_through :api

    scope "/v1", V1 do
      scope "/boards" do
        get "/", BoardController, :index
        post "/", BoardController, :create
        get "/:id", BoardController, :show
      end
    end
  end
end
