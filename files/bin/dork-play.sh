#!/usr/bin/env bash
if test "$#" -lt 1; then
  echo "Usage: dork-play [playbook] [playbook arguments]"
  exit
fi

ansible-playbook -i /usr/bin/dork $1 ${@:2}
