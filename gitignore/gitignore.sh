#!/bin/bash

$MAC_SETUP_DIR/install.sh gitignore \
  --script-version "" \
  --script-config "
    rm ~/.gitignore_global
    ln -s $MAC_SETUP_DIR/gitignore/gitignorerc ~/.gitignore_global
    ls -la ~/.gitignore_global" \
  $@
