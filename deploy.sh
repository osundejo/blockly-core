#!/bin/bash
if [[ $1 == "debug" ]]; then
  python ../closure-library-read-only/closure/bin/build/closurebuilder.py \
  --root=../closure-library-read-only/ --root=core/ \
  --compiler_jar=compiler.jar --compiler_flags="--compilation_level=WHITESPACE_ONLY" \
  --compiler_flags="--formatting=PRETTY_PRINT" \
  --namespace="Blockly" --output_mode=compiled \
  > blockly_debug.js
else
  python ../closure-library-read-only/closure/bin/build/closurebuilder.py \
  --root=../closure-library-read-only/ --root=core/ \
  --compiler_jar=compiler.jar --namespace="Blockly" --output_mode=compiled \
  > blockly_compressed.js
fi
