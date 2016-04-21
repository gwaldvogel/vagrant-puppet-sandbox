#!/usr/bin/env bash
#
# Based on https://github.com/hashicorp/puppet-bootstrap/blob/master/ubuntu.sh
#
set -e

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

if which puppet > /dev/null ; then
  echo "Puppet is already installed."
else
  # Do the initial apt-get update
  echo "Initial apt-get update..."
  apt-get update > /dev/null

  # Install the PuppetLabs repo
  echo "Installing puppet..."
  apt-get install puppet -y > /dev/null

  echo "Puppet installed!"
fi

exit 0
