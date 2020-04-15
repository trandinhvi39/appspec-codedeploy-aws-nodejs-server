#! /bin/bash

set -e

APP_DIR="/opt/nodejs_app/current/"
CURRENT_DIR="${APP_DIR}/current"
BACKUP_DIR="${APP_DIR}/backup"

cp $BACKUP_DIR/.env $CURRENT_DIR/.env
cp $BACKUP_DIR/ecosystem.config.js $CURRENT_DIR/ecosystem.config.js
cd $CURRENT_DIR
npm install
npm run build
