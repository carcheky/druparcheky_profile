#!/bin/bash

recomposer() {
  rm -fr ../../core ../../vendor ../../*/contrib ../../*.lock
  composer update --with-dependencies -d ../..
}

reinstall() {
  drush si druparcheky --account-pass=admin --site-name=devmodules --locale=es -y
}

recomposer
reinstall

cmd.exe /C start http://devmodules.local/user
# cmd.exe /C start $(dr uli)
