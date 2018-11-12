#!/bin/bash

$MAC_SETUP_DIR/install.sh rvm \
  --script-install "
    \curl -sSL https://get.rvm.io | bash -s stable" \
  $@

$MAC_SETUP_DIR/install.sh ruby --script-install "rvm install ruby" $@

$MAC_SETUP_DIR/install.sh brew \
  --script-install '
  [ ! "$CI" ] && \
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)' \
  $@

$MAC_SETUP_DIR/install.sh pod --script-install "gem install cocoapods" $@

$MAC_SETUP_DIR/install.sh fastlane --script-install "gem install fastlane -NV" $@
