#!/bin/bash

set -euxo pipefail

ACTION="$1"
PATH=./node_modules/.bin/:$PATH

scss_srcfolder="../public/typo3conf/ext/theme/Resources/Private/SCSS/Frontend/"
scss_srcfile="main.scss"
css_targetfile="../public/typo3conf/ext/theme/Resources/Public/CSS/Frontend/main.css"

case "$ACTION" in
   build)
     rm -f "${css_targetfile}*"
     sass --no-embed-source-map --error-css --stop-on-error --style=compressed "${scss_srcfolder}/${scss_srcfile}":"${css_targetfile}"
     postcss "${css_targetfile}" --replace --use autoprefixer
     ;;
   watch)
     nodemon -V -e scss -w "$scss_srcfolder" -x ./scss-build.sh build
     ;;
   *)
     echo "No valid action given. Use build or watch."
     ;;
esac


