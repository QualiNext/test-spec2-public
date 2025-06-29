torque_server_address=$1
torque_token=$2
space=$3
env_id=$4

curl -X POST --url "$torque_server_address/api/spaces/$space/environments/$env_id/update_v2" -H "Authorization: Bearer $torque_token" -H 'Content-Type: application/json' --data '{ "inputs": { "should_fail": false } }'