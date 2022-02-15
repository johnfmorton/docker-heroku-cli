# johnfmorton/heroku-cli

This image contains an installation of [Heroku CLI]((https://devcenter.heroku.com/articles/heroku-cli).

## Basic use

The default command in the Dockerfile is `/bin/bash`.

Spin up the image with the following command.

```
docker container run --rm -it -v `pwd`:/app johnfmorton/heroku-cli
```

At the bash shell prompt, use the `heroku` command as you like. Read the [heroku-cli documentation](https://devcenter.heroku.com/articles/heroku-cli) for more information.

## More information

See the GitHub repo for additional documentation on using this Dockerfile: [https://github.com/johnfmorton/docker-heroku-cli](https://github.com/johnfmorton/docker-heroku-cli)

Where to file issues: [https://github.com/johnfmorton/docker-heroku-cli/issues](https://github.com/johnfmorton/docker-heroku-cli/issues)
