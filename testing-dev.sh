#!/bin/bash

# AUTOINSTALACION ES
drush si standard --account-pass=admin --site-name=druparcheky --locale=es -yvvv

# AUTOINSTALACION EN
# drush si standard --account-pass=admin --site-name=druparcheky --locale=en -yvvv

cmd.exe /C start http://druparcheky:8888/user
# cmd.exe /C start $(dr uli)
