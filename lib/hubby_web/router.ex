defmodule HubbyWeb.Router do
  use HubbyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", HubbyWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end
