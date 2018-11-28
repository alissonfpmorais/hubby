defmodule Hubby.HubTest do
  use Hubby.DataCase

  alias Hubby.Hub

  describe "infos" do
    alias Hubby.Hub.Info

    @valid_attrs %{age: 42, gender: 42, is_available: true, phone: "some phone"}
    @update_attrs %{age: 43, gender: 43, is_available: false, phone: "some updated phone"}
    @invalid_attrs %{age: nil, gender: nil, is_available: nil, phone: nil}

    def info_fixture(attrs \\ %{}) do
      {:ok, info} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Hub.create_info()

      info
    end

    test "list_infos/0 returns all infos" do
      info = info_fixture()
      assert Hub.list_infos() == [info]
    end

    test "get_info!/1 returns the info with given id" do
      info = info_fixture()
      assert Hub.get_info!(info.id) == info
    end

    test "create_info/1 with valid data creates a info" do
      assert {:ok, %Info{} = info} = Hub.create_info(@valid_attrs)
      assert info.age == 42
      assert info.gender == 42
      assert info.is_available == true
      assert info.phone == "some phone"
    end

    test "create_info/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Hub.create_info(@invalid_attrs)
    end

    test "update_info/2 with valid data updates the info" do
      info = info_fixture()
      assert {:ok, %Info{} = info} = Hub.update_info(info, @update_attrs)
      assert info.age == 43
      assert info.gender == 43
      assert info.is_available == false
      assert info.phone == "some updated phone"
    end

    test "update_info/2 with invalid data returns error changeset" do
      info = info_fixture()
      assert {:error, %Ecto.Changeset{}} = Hub.update_info(info, @invalid_attrs)
      assert info == Hub.get_info!(info.id)
    end

    test "delete_info/1 deletes the info" do
      info = info_fixture()
      assert {:ok, %Info{}} = Hub.delete_info(info)
      assert_raise Ecto.NoResultsError, fn -> Hub.get_info!(info.id) end
    end

    test "change_info/1 returns a info changeset" do
      info = info_fixture()
      assert %Ecto.Changeset{} = Hub.change_info(info)
    end
  end

  describe "techs" do
    alias Hubby.Hub.Tech

    @valid_attrs %{name: "some name", skill_level: 42}
    @update_attrs %{name: "some updated name", skill_level: 43}
    @invalid_attrs %{name: nil, skill_level: nil}

    def tech_fixture(attrs \\ %{}) do
      {:ok, tech} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Hub.create_tech()

      tech
    end

    test "list_techs/0 returns all techs" do
      tech = tech_fixture()
      assert Hub.list_techs() == [tech]
    end

    test "get_tech!/1 returns the tech with given id" do
      tech = tech_fixture()
      assert Hub.get_tech!(tech.id) == tech
    end

    test "create_tech/1 with valid data creates a tech" do
      assert {:ok, %Tech{} = tech} = Hub.create_tech(@valid_attrs)
      assert tech.name == "some name"
      assert tech.skill_level == 42
    end

    test "create_tech/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Hub.create_tech(@invalid_attrs)
    end

    test "update_tech/2 with valid data updates the tech" do
      tech = tech_fixture()
      assert {:ok, %Tech{} = tech} = Hub.update_tech(tech, @update_attrs)
      assert tech.name == "some updated name"
      assert tech.skill_level == 43
    end

    test "update_tech/2 with invalid data returns error changeset" do
      tech = tech_fixture()
      assert {:error, %Ecto.Changeset{}} = Hub.update_tech(tech, @invalid_attrs)
      assert tech == Hub.get_tech!(tech.id)
    end

    test "delete_tech/1 deletes the tech" do
      tech = tech_fixture()
      assert {:ok, %Tech{}} = Hub.delete_tech(tech)
      assert_raise Ecto.NoResultsError, fn -> Hub.get_tech!(tech.id) end
    end

    test "change_tech/1 returns a tech changeset" do
      tech = tech_fixture()
      assert %Ecto.Changeset{} = Hub.change_tech(tech)
    end
  end

  describe "projects" do
    alias Hubby.Hub.Project

    @valid_attrs %{description: "some description", name: "some name", url: "some url"}
    @update_attrs %{description: "some updated description", name: "some updated name", url: "some updated url"}
    @invalid_attrs %{description: nil, name: nil, url: nil}

    def project_fixture(attrs \\ %{}) do
      {:ok, project} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Hub.create_project()

      project
    end

    test "list_projects/0 returns all projects" do
      project = project_fixture()
      assert Hub.list_projects() == [project]
    end

    test "get_project!/1 returns the project with given id" do
      project = project_fixture()
      assert Hub.get_project!(project.id) == project
    end

    test "create_project/1 with valid data creates a project" do
      assert {:ok, %Project{} = project} = Hub.create_project(@valid_attrs)
      assert project.description == "some description"
      assert project.name == "some name"
      assert project.url == "some url"
    end

    test "create_project/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Hub.create_project(@invalid_attrs)
    end

    test "update_project/2 with valid data updates the project" do
      project = project_fixture()
      assert {:ok, %Project{} = project} = Hub.update_project(project, @update_attrs)
      assert project.description == "some updated description"
      assert project.name == "some updated name"
      assert project.url == "some updated url"
    end

    test "update_project/2 with invalid data returns error changeset" do
      project = project_fixture()
      assert {:error, %Ecto.Changeset{}} = Hub.update_project(project, @invalid_attrs)
      assert project == Hub.get_project!(project.id)
    end

    test "delete_project/1 deletes the project" do
      project = project_fixture()
      assert {:ok, %Project{}} = Hub.delete_project(project)
      assert_raise Ecto.NoResultsError, fn -> Hub.get_project!(project.id) end
    end

    test "change_project/1 returns a project changeset" do
      project = project_fixture()
      assert %Ecto.Changeset{} = Hub.change_project(project)
    end
  end

  describe "socials" do
    alias Hubby.Hub.Social

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def social_fixture(attrs \\ %{}) do
      {:ok, social} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Hub.create_social()

      social
    end

    test "list_socials/0 returns all socials" do
      social = social_fixture()
      assert Hub.list_socials() == [social]
    end

    test "get_social!/1 returns the social with given id" do
      social = social_fixture()
      assert Hub.get_social!(social.id) == social
    end

    test "create_social/1 with valid data creates a social" do
      assert {:ok, %Social{} = social} = Hub.create_social(@valid_attrs)
      assert social.name == "some name"
    end

    test "create_social/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Hub.create_social(@invalid_attrs)
    end

    test "update_social/2 with valid data updates the social" do
      social = social_fixture()
      assert {:ok, %Social{} = social} = Hub.update_social(social, @update_attrs)
      assert social.name == "some updated name"
    end

    test "update_social/2 with invalid data returns error changeset" do
      social = social_fixture()
      assert {:error, %Ecto.Changeset{}} = Hub.update_social(social, @invalid_attrs)
      assert social == Hub.get_social!(social.id)
    end

    test "delete_social/1 deletes the social" do
      social = social_fixture()
      assert {:ok, %Social{}} = Hub.delete_social(social)
      assert_raise Ecto.NoResultsError, fn -> Hub.get_social!(social.id) end
    end

    test "change_social/1 returns a social changeset" do
      social = social_fixture()
      assert %Ecto.Changeset{} = Hub.change_social(social)
    end
  end

  describe "user_has_socials" do
    alias Hubby.Hub.UserHasSocial

    @valid_attrs %{url: "some url"}
    @update_attrs %{url: "some updated url"}
    @invalid_attrs %{url: nil}

    def user_has_social_fixture(attrs \\ %{}) do
      {:ok, user_has_social} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Hub.create_user_has_social()

      user_has_social
    end

    test "list_user_has_socials/0 returns all user_has_socials" do
      user_has_social = user_has_social_fixture()
      assert Hub.list_user_has_socials() == [user_has_social]
    end

    test "get_user_has_social!/1 returns the user_has_social with given id" do
      user_has_social = user_has_social_fixture()
      assert Hub.get_user_has_social!(user_has_social.id) == user_has_social
    end

    test "create_user_has_social/1 with valid data creates a user_has_social" do
      assert {:ok, %UserHasSocial{} = user_has_social} = Hub.create_user_has_social(@valid_attrs)
      assert user_has_social.url == "some url"
    end

    test "create_user_has_social/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Hub.create_user_has_social(@invalid_attrs)
    end

    test "update_user_has_social/2 with valid data updates the user_has_social" do
      user_has_social = user_has_social_fixture()
      assert {:ok, %UserHasSocial{} = user_has_social} = Hub.update_user_has_social(user_has_social, @update_attrs)
      assert user_has_social.url == "some updated url"
    end

    test "update_user_has_social/2 with invalid data returns error changeset" do
      user_has_social = user_has_social_fixture()
      assert {:error, %Ecto.Changeset{}} = Hub.update_user_has_social(user_has_social, @invalid_attrs)
      assert user_has_social == Hub.get_user_has_social!(user_has_social.id)
    end

    test "delete_user_has_social/1 deletes the user_has_social" do
      user_has_social = user_has_social_fixture()
      assert {:ok, %UserHasSocial{}} = Hub.delete_user_has_social(user_has_social)
      assert_raise Ecto.NoResultsError, fn -> Hub.get_user_has_social!(user_has_social.id) end
    end

    test "change_user_has_social/1 returns a user_has_social changeset" do
      user_has_social = user_has_social_fixture()
      assert %Ecto.Changeset{} = Hub.change_user_has_social(user_has_social)
    end
  end
end
