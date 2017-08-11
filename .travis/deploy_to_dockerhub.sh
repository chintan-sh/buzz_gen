#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
docker build -f Dockerfile -t c0defella/buzzgenerator:$TAG .   #$TRAVIS_REPO_SLUG
docker push c0defella/buzzgenerator:$TAG #$TRAVIS_REPO_SLUG