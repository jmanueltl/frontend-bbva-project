# Install Polymer CLI, https://www.polymer-project.org/3.0/docs/tools/polymer-cli
FROM node

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
git \
&& rm -rf /var/lib/apt/lists/*

RUN npm install -g polymer-cli --unsafe-perm

EXPOSE 5000

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

CMD ["polymer", "serve"]
