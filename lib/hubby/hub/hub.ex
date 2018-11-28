defmodule Hubby.Hub do
  @moduledoc """
  The Hub context.
  """

  import Ecto.Query, warn: false
  alias Hubby.Repo

  alias Hubby.Hub.Info

  @doc """
  Returns the list of infos.

  ## Examples

      iex> list_infos()
      [%Info{}, ...]

  """
  def list_infos do
    Repo.all(Info)
  end

  @doc """
  Gets a single info.

  Raises `Ecto.NoResultsError` if the Info does not exist.

  ## Examples

      iex> get_info!(123)
      %Info{}

      iex> get_info!(456)
      ** (Ecto.NoResultsError)

  """
  def get_info!(id), do: Repo.get!(Info, id)

  @doc """
  Creates a info.

  ## Examples

      iex> create_info(%{field: value})
      {:ok, %Info{}}

      iex> create_info(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_info(attrs \\ %{}) do
    %Info{}
    |> Info.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a info.

  ## Examples

      iex> update_info(info, %{field: new_value})
      {:ok, %Info{}}

      iex> update_info(info, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_info(%Info{} = info, attrs) do
    info
    |> Info.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Info.

  ## Examples

      iex> delete_info(info)
      {:ok, %Info{}}

      iex> delete_info(info)
      {:error, %Ecto.Changeset{}}

  """
  def delete_info(%Info{} = info) do
    Repo.delete(info)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking info changes.

  ## Examples

      iex> change_info(info)
      %Ecto.Changeset{source: %Info{}}

  """
  def change_info(%Info{} = info) do
    Info.changeset(info, %{})
  end

  alias Hubby.Hub.Tech

  @doc """
  Returns the list of techs.

  ## Examples

      iex> list_techs()
      [%Tech{}, ...]

  """
  def list_techs do
    Repo.all(Tech)
  end

  @doc """
  Gets a single tech.

  Raises `Ecto.NoResultsError` if the Tech does not exist.

  ## Examples

      iex> get_tech!(123)
      %Tech{}

      iex> get_tech!(456)
      ** (Ecto.NoResultsError)

  """
  def get_tech!(id), do: Repo.get!(Tech, id)

  @doc """
  Creates a tech.

  ## Examples

      iex> create_tech(%{field: value})
      {:ok, %Tech{}}

      iex> create_tech(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_tech(attrs \\ %{}) do
    %Tech{}
    |> Tech.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a tech.

  ## Examples

      iex> update_tech(tech, %{field: new_value})
      {:ok, %Tech{}}

      iex> update_tech(tech, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_tech(%Tech{} = tech, attrs) do
    tech
    |> Tech.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Tech.

  ## Examples

      iex> delete_tech(tech)
      {:ok, %Tech{}}

      iex> delete_tech(tech)
      {:error, %Ecto.Changeset{}}

  """
  def delete_tech(%Tech{} = tech) do
    Repo.delete(tech)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking tech changes.

  ## Examples

      iex> change_tech(tech)
      %Ecto.Changeset{source: %Tech{}}

  """
  def change_tech(%Tech{} = tech) do
    Tech.changeset(tech, %{})
  end

  alias Hubby.Hub.Project

  @doc """
  Returns the list of projects.

  ## Examples

      iex> list_projects()
      [%Project{}, ...]

  """
  def list_projects do
    Repo.all(Project)
  end

  @doc """
  Gets a single project.

  Raises `Ecto.NoResultsError` if the Project does not exist.

  ## Examples

      iex> get_project!(123)
      %Project{}

      iex> get_project!(456)
      ** (Ecto.NoResultsError)

  """
  def get_project!(id), do: Repo.get!(Project, id)

  @doc """
  Creates a project.

  ## Examples

      iex> create_project(%{field: value})
      {:ok, %Project{}}

      iex> create_project(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_project(attrs \\ %{}) do
    %Project{}
    |> Project.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a project.

  ## Examples

      iex> update_project(project, %{field: new_value})
      {:ok, %Project{}}

      iex> update_project(project, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_project(%Project{} = project, attrs) do
    project
    |> Project.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Project.

  ## Examples

      iex> delete_project(project)
      {:ok, %Project{}}

      iex> delete_project(project)
      {:error, %Ecto.Changeset{}}

  """
  def delete_project(%Project{} = project) do
    Repo.delete(project)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking project changes.

  ## Examples

      iex> change_project(project)
      %Ecto.Changeset{source: %Project{}}

  """
  def change_project(%Project{} = project) do
    Project.changeset(project, %{})
  end

  alias Hubby.Hub.Social

  @doc """
  Returns the list of socials.

  ## Examples

      iex> list_socials()
      [%Social{}, ...]

  """
  def list_socials do
    Repo.all(Social)
  end

  @doc """
  Gets a single social.

  Raises `Ecto.NoResultsError` if the Social does not exist.

  ## Examples

      iex> get_social!(123)
      %Social{}

      iex> get_social!(456)
      ** (Ecto.NoResultsError)

  """
  def get_social!(id), do: Repo.get!(Social, id)

  @doc """
  Creates a social.

  ## Examples

      iex> create_social(%{field: value})
      {:ok, %Social{}}

      iex> create_social(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_social(attrs \\ %{}) do
    %Social{}
    |> Social.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a social.

  ## Examples

      iex> update_social(social, %{field: new_value})
      {:ok, %Social{}}

      iex> update_social(social, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_social(%Social{} = social, attrs) do
    social
    |> Social.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Social.

  ## Examples

      iex> delete_social(social)
      {:ok, %Social{}}

      iex> delete_social(social)
      {:error, %Ecto.Changeset{}}

  """
  def delete_social(%Social{} = social) do
    Repo.delete(social)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking social changes.

  ## Examples

      iex> change_social(social)
      %Ecto.Changeset{source: %Social{}}

  """
  def change_social(%Social{} = social) do
    Social.changeset(social, %{})
  end

  alias Hubby.Hub.UserHasSocial

  @doc """
  Returns the list of user_has_socials.

  ## Examples

      iex> list_user_has_socials()
      [%UserHasSocial{}, ...]

  """
  def list_user_has_socials do
    Repo.all(UserHasSocial)
  end

  @doc """
  Gets a single user_has_social.

  Raises `Ecto.NoResultsError` if the User has social does not exist.

  ## Examples

      iex> get_user_has_social!(123)
      %UserHasSocial{}

      iex> get_user_has_social!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user_has_social!(id), do: Repo.get!(UserHasSocial, id)

  @doc """
  Creates a user_has_social.

  ## Examples

      iex> create_user_has_social(%{field: value})
      {:ok, %UserHasSocial{}}

      iex> create_user_has_social(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user_has_social(attrs \\ %{}) do
    %UserHasSocial{}
    |> UserHasSocial.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user_has_social.

  ## Examples

      iex> update_user_has_social(user_has_social, %{field: new_value})
      {:ok, %UserHasSocial{}}

      iex> update_user_has_social(user_has_social, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user_has_social(%UserHasSocial{} = user_has_social, attrs) do
    user_has_social
    |> UserHasSocial.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a UserHasSocial.

  ## Examples

      iex> delete_user_has_social(user_has_social)
      {:ok, %UserHasSocial{}}

      iex> delete_user_has_social(user_has_social)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user_has_social(%UserHasSocial{} = user_has_social) do
    Repo.delete(user_has_social)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user_has_social changes.

  ## Examples

      iex> change_user_has_social(user_has_social)
      %Ecto.Changeset{source: %UserHasSocial{}}

  """
  def change_user_has_social(%UserHasSocial{} = user_has_social) do
    UserHasSocial.changeset(user_has_social, %{})
  end
end
