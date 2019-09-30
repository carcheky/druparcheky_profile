#!/bin/bash

# AUTOINSTALACIÓN ES
# drush si standard --account-pass=admin --site-name=themerepo --locale=es -y

# AUTOINSTALACIÓN EN
drush si druparcheky --account-pass=admin --site-name=themerepo -y

cmd.exe /C start http://themerepo:8888/user
