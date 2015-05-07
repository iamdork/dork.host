#!/bin/bash
if [ -d "/op/dork" ]; then
  python /opt/dork/dork/__init__.py $@
else
  dork $@
fi
