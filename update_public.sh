#!/usr/bin/env bash

# generate the website from Hugo Academic theme,
# write the generated contents to public/ directory,
# and push the update to <username>.github.io for publishing
# https://sourcethemes.com/academic/docs/deployment/
#
# Command: bash ./update_public.sh

# Check for prerequisites.
if [ ! -d .git ]; then
  echo "ERROR: This tool is for Git repositories only."
  exit 1;
fi

# remove all old files from public/ to avoid confusion
echo -e "removing all files and folders in public directory"
cd public
rm -rf *
cd ..

echo "generating website contents for github.io..."
hugo
