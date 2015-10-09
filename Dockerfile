#
# nginx-basic-auth Dockerfile
#
# https://github.com/igortimoshenko/docker-nginx-basic-auth
#

# Pull base image.
FROM nginx

# Set environment variables.
ENV DEBIAN_FRONTEND=noninteractive \
    TERM=xterm

# Install needed packages.
RUN apt-get update -y \
    && apt-get install -y \
        apache2-utils \
    && rm -rf /var/lib/apt/lists/*

# Copy needed files & Fix file permissions.
COPY basic-auth.conf entrypoint.sh /
RUN chmod 0755 /entrypoint.sh

CMD /entrypoint.sh
