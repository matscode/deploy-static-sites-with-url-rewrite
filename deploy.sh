#!/bin/sh
#-------------------------------------
# Serving Static Site e.g vuejs app
#-------------------------------------

#-------------------------------------
# Requirements
# ------------
# - Install serve package.
#   run 'yarn add serve' or 'npm i -S serve'
#
# - copy deploy into your project and
#   make 'deploy' executable.
#   run 'chmod +x deploy.sh'
#
# - Add your build command and deploy.
#   vuejs app example below;
#   set scripts.start to './deploy'
#   or './deploy' in package.json
#
# - Ignore serve package config file (optional)
#   add 'serve.json' to your '.gitignore' file
#--------------------------------------

# server configuration
BUILD_PATH='dist';

echo "{
  \"public\": \"$BUILD_PATH\",
  \"rewrites\": [
    {
      \"source\": \"**\",
      \"destination\": \"/index.html\"
    }
  ]
}" > serve.json;

npx serve -l $PORT;
