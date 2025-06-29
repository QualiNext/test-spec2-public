torque_server_address=$1
torque_token=$2
space=$3
env_id=$4

http_code=$(curl -X POST -o response.txt -w %{http_code} --url "$torque_server_address/api/spaces/$space/environments/$env_id/update_v2" -H "Authorization: Bearer $torque_token" -H 'Content-Type: application/json' --data '{ "inputs": { "should_fail": false }, "force": true }')
cat response.txt
if [ $http_code != "200" ]; then
 echo "update got bad status code $http_code, exiting with error"
 exit 1;
fi