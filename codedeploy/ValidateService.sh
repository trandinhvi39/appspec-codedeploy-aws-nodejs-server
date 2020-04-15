#! /bin/bash

RC=""
for i in {1..100} ;do
  RC="$(curl -LI localhost:8080/healthcheck -o /dev/null -w '%{http_code}' -s --connect-timeout 30)"
  if [[ ${RC} == "200" ]] ;then
    exit 0
  else
    sleep 5
  fi
done
echo "StatusCode: ${RC}"
exit 1
