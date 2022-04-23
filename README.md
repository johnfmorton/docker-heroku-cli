# johnfmorton/heroku-cli

The Dockerfile in this repo is use to create image at [https://hub.docker.com/repository/docker/johnfmorton/heroku-cli](https://hub.docker.com/repository/docker/johnfmorton/heroku-cli).

## Basic use

The default command in the Dockerfile is `/bin/bash`.

Spin up the image with the following command.

```
docker container run --rm -it -v `pwd`:/app johnfmorton/heroku-cli
```

At the bash shell prompt, use the `heroku` command as you like. Read the [heroku-cli documentation](https://devcenter.heroku.com/articles/heroku-cli) for more information.

In version 1.1.0 of this repo, Git was added to the image.
