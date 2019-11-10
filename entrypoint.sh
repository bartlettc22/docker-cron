#!/bin/bash

echo "Docker container has been started"

# Setup a cron schedule
echo "SHELL=/bin/bash
${SCHEDULE} root /scripts/${SCRIPT_NAME} >> /tmp.txt 2>&1
# Don't remove the empty line at the end of this file. It is required to run the cron job" > /scheduler.txt

crontab /scheduler.txt
cron -f
