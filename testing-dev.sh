#!/bin/bash

# AUTOINSTALACION ES
# drush si druparcheky --account-pass=admin --site-name=druparcheky --locale=es -yvvv

# AUTOINSTALACION EN
drush si druparcheky --account-pass=admin --site-name=devmodules --locale=es -yvvv

cmd.exe /C start http://devmodules.local/user
# cmd.exe /C start $(dr uli)
