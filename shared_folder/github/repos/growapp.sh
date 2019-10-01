#!/bin/bash 

# Set Repo information
REPO_DESTINATION_ROOT_DIRECTORY=/usr/local/var
GITHUB_DOMAIN=github.com
GITHUB_USER=wmhass
REPO_NAME=GrowApp
REPO_URL=git@$GITHUB_DOMAIN:$GITHUB_USER/$REPO_NAME.git
REPO_DESTINATION_DIRECTORY=$REPO_DESTINATION_ROOT_DIRECTORY/$REPO_NAME

# Create repo root folder if does not exist
if [ ! -d $REPO_DESTINATION_ROOT_DIRECTORY ]; then mkdir $REPO_DESTINATION_ROOT_DIRECTORY; fi

# Delete repository directory if already exists
if [ -d $REPO_DESTINATION_DIRECTORY ]; then sudo rm -rf $REPO_DESTINATION_DIRECTORY; fi

# Clone repo
cd $REPO_DESTINATION_ROOT_DIRECTORY
git clone $REPO_URL

# TODO: Rebuild and recreate Docker Container