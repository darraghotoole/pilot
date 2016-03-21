#!/bin/sh
echo "Waiting for startup.."

init_mongo () {
  mongo "localhost:27017" <<EOF
    rs.initiate();
EOF
  return $?
}

until init_mongo; do
  printf '.'
  sleep 1
done
