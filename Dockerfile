FROM ubuntu:bionic

# This is where any scripts should be mounted
VOLUME /scripts

# Default envs
ENV SCRIPT_NAME=job.sh
ENV SCHEDULE="* * * * *"

# Install cron
RUN apt-get update && apt-get install -y cron

# This will install script as the cron
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
