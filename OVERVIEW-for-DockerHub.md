# johnfmorton/heroku-cli

This image contains an installation of [Heroku CLI]((https://devcenter.heroku.com/articles/heroku-cli).

## Basic use

The default command in the Dockerfile is `/bin/bash`.

Spin up the image with the following command.

```
docker container run --rm -it -v `pwd`:/app johnfmorton/heroku-cli
```

Use the `heroku` command at the bash shell prompt as you like. Read the [heroku-cli documentation](https://devcenter.heroku.com/articles/heroku-cli) for more information.

## Setting up an alias for ease of use

You can set up an alias in your `rc` file to bring up a command line with the heroku-cli like this.

```
alias heroku='docker run -it -v "$PWD":/app -w /app johnfmorton/heroku-cli'
```

This version of the alias does not contain the `--rm` flag so the image is _not_ removed when you exit. The reason for this is so that it can use your logged-in Heroku account between sessions.

When you first launch the image, you will not be logged in. Entering `heroku login` will attempt to launch a web browser window, but since you are inside a Docker container, the web page will not launch. You will need to launch the URL shown manually to finish the login process. Once you have successfully logged in, you will be able to proceed as normal. Since the container is not removed when you are finished, you can open the container again and you will still be logged in.

## More information

See the GitHub repo for additional documentation on using this Dockerfile: [https://github.com/johnfmorton/docker-heroku-cli](https://github.com/johnfmorton/docker-heroku-cli)

Where to file issues: [https://github.com/johnfmorton/docker-heroku-cli/issues](https://github.com/johnfmorton/docker-heroku-cli/issues)
