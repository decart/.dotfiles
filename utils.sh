#!/usr/bin/bash

release_name() {
  cat /etc/os-release | grep '^ID=' | awk -F= '{ print $2 }'
}
