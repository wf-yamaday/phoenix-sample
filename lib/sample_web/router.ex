defmodule SampleWeb.Router do
  use SampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SampleWeb do
    pipe_through :api
    resources "/boards", BoardController, except: [:new, :edit]
  end
end
