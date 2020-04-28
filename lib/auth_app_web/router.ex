defmodule AuthAppWeb.Router do
  use AuthAppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AuthAppWeb do
    pipe_through :api
  end
end
