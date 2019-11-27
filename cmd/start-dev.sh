#!/bin/bash
echo '... DEV MODE'
echo '... START NGINX'
nginx &
echo '... INSTALL PACKAGES'
yarn
# yarn run alpha &
echo '... START SERVER'
yarn run serve --port 9999
