defmodule HubbyWeb.UserView do
  use HubbyWeb, :view
  alias HubbyWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "users.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("users.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email,
      avatar: user.avatar}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email,
      avatar: user.avatar,
      provider: user.provider,
      token: user.token,
      info: render_one(user.info, __MODULE__, "info.json", as: :info),
      projects: render_many(user.projects, __MODULE__, "project.json", as: :project),
      techs: render_many(user.techs, __MODULE__, "tech.json", as: :tech),
      socials: render_many(user.links, __MODULE__, "social.json", as: :link)}
  end

  def render("info.json", %{info: info}) do
    %{id: info.id,
      age: info.age,
      gender: info.gender,
      phone: info.phone,
      is_available: info.is_available}
  end

  def render("project.json", %{project: project}) do
    %{id: project.id,
      name: project.name,
      description: project.description,
      url: project.url}
  end

  def render("tech.json", %{tech: tech}) do
    %{id: tech.id,
      name: tech.name,
      skill_level: tech.skill_level}
  end

  def render("social.json", %{link: link}) do
    %{id: link.id,
      name: link.social.name,
      url: link.url}
  end
end
