#! /bin/bash

rsync -aviK --delete /opt/nodejs_app/current/ /opt/nodejs_app/backup
rm -rf /opt/nodejs_app/current
