defmodule HubbyWeb.UserView do
  use HubbyWeb, :view
  alias HubbyWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email,
      avatar: user.avatar,
      provider: user.provider,
      token: user.token}
  end
end
