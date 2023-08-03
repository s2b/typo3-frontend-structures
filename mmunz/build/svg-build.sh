#!/bin/bash

set -euxo pipefail

PATH=./node_modules/.bin/:$PATH

svg-sprite --config icon-default.config.json ../packages/composer/theme/Resources/Public/Icons/Default/*.svg
