#!/usr/bin/env bash
./setup.sh &
mongod --replSet "rs0"
