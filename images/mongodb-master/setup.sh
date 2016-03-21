#!/usr/bin/env bash
echo "Waiting for startup.."

init_mongo () {
  mongo "localhost:27017" <<EOF
    rs.initiate();
    rs.slaveOk();
EOF
  return $?
}

until init_mongo; do
  sleep 1
done

echo "Mongo configured!"
