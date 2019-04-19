defmodule SampleWeb.Router do
  use SampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
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

  scope "/" , SampleWeb do
    pipe_through :browser

    get "/", PageController, :index
  end
  
end
