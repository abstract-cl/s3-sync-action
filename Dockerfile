FROM python:3.7-alpine


LABEL "com.github.actions.name"="S3 Sync"
LABEL "com.github.actions.description"="Sync a directory to a S3 repository"
LABEL "com.github.actions.icon"="trash-2"
LABEL "com.github.actions.color"="orange"

LABEL version="0.1.0"
LABEL "repository"="https://github.com/jakejarvis/s3-sync-action"
LABEL "homepage"="https://jarv.is/"
LABEL "maintainer"="Jake Jarvis <jake@jarv.is>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION: '1.16.220'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
