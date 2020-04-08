!#/bin/bash

set -exou pipefail

source conf

## Setup dirs
mkdir -p ${DIR_CODE}
mkdir -p ${DIR_PROJ}

## Setup project symlink
ln -s ${DIR_CODE}/github.com/chewr/raspi-automation ${DIR_PROJ}/raspi-automation

## Setup crontab
cron_command="@reboot cd ${DIR_PROJ}/raspi-automation && ./cron.sh"
if [ -z "$(crontab -l | grep "${cron_command}")" ]
then
        echo "${cron_command}" | crontab -
fi
