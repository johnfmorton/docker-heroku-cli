ARG TAG=16-alpine
FROM node:$TAG

WORKDIR /app

ADD files-to-include/.bashrc /root/.bashrc

# Install dependencies
RUN set -eux; \
    # Packages to install
    apk add --no-cache \
    && \
    apk add curl \
    && \
    apk add bash \
    && \
    curl https://cli-assets.heroku.com/install.sh | sh \
    && \
    # Clean out directories that don't need to be part of the image
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Since this is a command line app, by default, we want to run the bash shell
CMD ["/bin/bash"]
