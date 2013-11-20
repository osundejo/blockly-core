#!/bin/bash

set -e

if [[ $# -ne 1 ]]; then
  echo 'Usage: codeorg-messages.sh <blockly-core-i18n-path>' > /dev/stdout
  exit 1
fi

locales_dir=$1/locales
core_dir=.

locales=$(ls $locales_dir)

for locale in $locales; do

  js_locale=$(echo $locale | tr '[:upper:]' '[:lower:]' | tr '-' '_')

  src=$locales_dir/$locale/core.json
  dest=$core_dir/msg/js/${js_locale}.js

  echo "$src => $dest"
  $core_dir/i18n/codeorg-json-to-js.pl $js_locale < $src > $dest

done
