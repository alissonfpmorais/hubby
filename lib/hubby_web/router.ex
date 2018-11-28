defmodule HubbyWeb.Router do
  use HubbyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HubbyWeb do
    pipe_through :api
  end
end