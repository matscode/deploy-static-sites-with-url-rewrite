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
# - copy 'deploy' into your project root
#
# - Add 'deploy' to your package.json scripts.
#   vuejs app example below;
#   set scripts.start to 'sh deploy' in package.json
#
# - Ignore serve config file in git (optional)
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
