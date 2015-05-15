#!/bin/bash
if [ -d /opt/dork ]; then
  python /opt/dork/dork/__init__.py $@
else
  dork $@
fi
