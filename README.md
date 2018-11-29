# Hubby

To setup environment:
  * Download [Docker](https://store.docker.com/editions/community/docker-ce-desktop-windows)
  * Install Docker and ensure that `linux containers` are selected during installation
  * In system tray, right click on `Docker > Settings > Shared Drives > Select drive to share`, i.e.: `c:\`
  * Run Docker and open command prompt
  * Type `docker` and to check if it's working
  * Download two images using the following commands:
    * `docker pull postgres`
    * `docker pull alissonfpmorais/hubby`
  * Clone this repository to any folder (use previous shared drive), i.e.: `c:\hubby`
  * Now you should run docker with these code, with the following commands:
    * `docker run -p 5432:5432 --name pgdb -e POSTGRES_PASSWORD=root -d postgres`
    * `docker container run -p 4000:4000 -it --link pgdb:postgres --name hubby -v "c:/hubby:/home/hubby" alissonfpmorais/hubby /bin/bash`
    * `docker exec -it hubby /bin/bash`
    * `cd /home/hubby`
  * P.S.: using `c:/hubby` in this example, change the second command if using another directory

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

To test the Phoenix API:
  * Use some client, like: [Postman](https://www.getpostman.com/)
  * Type the the base url [http://localhost:4000/api/v1/](http://localhost:4000/api/v1/)
  * The endpoint is `/users`, so you can made some requisitions, like:
    * GET [http://localhost:4000/api/v1/users](http://localhost:4000/api/v1/users), to retrieve all users
    * GET [http://localhost:4000/api/v1/users/:id](http://localhost:4000/api/v1/users/:id), to retrieve one users
    * POST [http://localhost:4000/api/v1/users](http://localhost:4000/api/v1/users), to create a new user
    * PUT [http://localhost:4000/api/v1/users/:id](http://localhost:4000/api/v1/users/:id), to update a user
    * DELETE [http://localhost:4000/api/v1/users/:id](http://localhost:4000/api/v1/users), to delete a user
  * P.S.: POST, PUT and DELETE also create all user's related resources

Basic JSON structure:
  ```
  {
    "user": {
      "avatar": "",
      "email": "",
      "name": "",
      "provider": "",
      "token": "",
      "info": {
        "id": "",
        "age": 1,
        "gender": 1,
        "phone": "",
        "is_available": true
      },
      "techs": [
        {
          "id": 1,
          "name": "",
          "skill_level": 1
        }
      ],
      "projects": [
        {
          "id": 1
          "name": "",
          "description": "",
          "url": ""
        }
      ],
      "socials": [
        {
          "id": "",
          "name": "",
          "url": ""
        }
      ]
    }
  }
  ```

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
