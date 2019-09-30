#!/bin/bash

# AUTOINSTALACION ES
# drush si standard --account-pass=admin --site-name=themerepo --locale=es -y

# AUTOINSTALACION EN
drush si druparcheky --account-pass=admin --site-name=themerepo -yvvv

cmd.exe /C start http://themerepo:8888/user
# cmd.exe /C start $(dr uli)
