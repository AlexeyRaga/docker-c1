#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
docker build -t alexeyraga/armf-ubuntu ${DIR}