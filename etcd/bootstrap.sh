#!/bin/bash
set -e

# Tunable settings
RESET_DATA_ON_RESTART=${RESET_DATA_ON_RESTART:-"False"}
export ETCD_DATA_DIR=${ETCD_DATA_DIR:-/etc/etcd}
export ETCD_NAME=${ETCD_NAME:-default}

# Misc settings
ERR_LOG=/data/log/etcd/etcd_stderr.log

restart_message() {
    echo "Container restart on $(date)."
    echo -e "\nContainer restart on $(date)." | tee -a $ERR_LOG
}

if [ ! -e /tmp/etcd_first_run ]; then
    touch /tmp/etcd_first_run
else
    restart_message
    if [ $RESET_DATA_ON_RESTART = "True" ]; then
        rm -rf $ETCD_DATA_DIR &&\
            echo "All etcd backup data has been deleted."
    fi
fi

./usr/local/bin/etcd