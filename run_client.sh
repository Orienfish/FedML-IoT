# Usage:
#   Run FedML Client with $uuid
#     bash ./run_client.sh $uuid
# The script will run continuously run clients, with one minute interval between two trials

while true
  python3 fedcnn_rpi_client.py --server_ip http://132.239.17.133:5000 --client_uuid "$1"
  sleep 60s
done
