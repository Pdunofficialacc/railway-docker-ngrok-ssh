#!/bin/bash
set -e

# Start SSH
service ssh start

# Start ngrok TCP tunnel on port 22 in background
ngrok tcp 22 --log=stdout > /var/log/ngrok.log 2>&1 &

# Keep container alive and print tunnel info periodically
while true; do
  echo "=== SSH Ready ==="
  echo "Username: root"
  echo "Password: dev"
  echo "Checking ngrok tunnel..."
  sleep 5
  curl -s http://127.0.0.1:4040/api/tunnels 2>/dev/null | grep -o '"public_url":"[^"]*"' || echo "ngrok starting..."
  sleep 30
done
