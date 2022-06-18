# Usage:
#   Run FedML Client with $uuid
#     bash ./run_client.sh $uuid
# The script will run continuously run clients, with one minute interval between two trials

if [ $# -eq 0 ]
  then
    offset=4
    client_id=$(($offset+3))
else
  client_id=$1
fi
echo $client_id

while true
do
  python3 fedcnn_rpi_client.py --server_ip http://132.239.17.132:5000 --client_uuid $client_id 2>&1 | tee output_$client_id.log
  sleep 60s
done
