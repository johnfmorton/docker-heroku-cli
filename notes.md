When Heroku CLI is updated, rebuild and push the image again like this.

```
docker buildx build --push --no-cache --platform linux/arm64/v8,linux/amd64 --tag johnfmorton/heroku-cli:latest .
```
