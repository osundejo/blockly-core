#!/bin/bash
../closure-library-read-only/closure/bin/build/closurebuilder.py \
--root=../closure-library-read-only/ --root=core/ \
--compiler_jar=compiler.jar --namespace="Blockly" --output_mode=compiled \
> blockly_compressed.js
