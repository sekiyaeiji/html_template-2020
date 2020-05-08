#!/bin/sh

echo "\n\n\n*** build:css ***"
stylelint --config conf/stylelintrc.js src/css/**/*.scss &&
  node-sass --output-style compressed src/css/common/common.scss -o dist/css/

postcss dist/css/* --use autoprefixer css-mqpacker -d dist/css/ --no-map

px2rem --config conf/pxrem.js
