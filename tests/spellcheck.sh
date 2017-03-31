#!/bin/sh
echo "
         ######################################
         ###          Default test           ##
         ######################################
"


# Make sure tests fails if a commend ends without 0
set -e

# Run spellcheck for all Markdown files
# https://www.npmjs.com/package/markdown-spellcheck
docker run --rm -v `pwd`:/workdir tmaier/markdown-spellcheck:latest --report **/*.md --ignore-numbers --ignore-acronyms