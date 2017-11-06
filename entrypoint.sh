#!/bin/bash
set -e

ansible-playbook --connection=local --limit development /securedrop/install_files/ansible-base/securedrop-development.yml --tags securedrop_config

service redis-server start

exec "$@"

