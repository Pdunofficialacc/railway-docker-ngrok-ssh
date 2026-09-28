# Railway Docker + ngrok VPS SSH

Deploy this on Railway to get free-ish SSH access via ngrok TCP tunnel.

## Credentials
- Username: `root`
- Password: `dev`

## How to deploy
1. Connect this repo to Railway
2. Deploy as Docker
3. Check logs for ngrok public_url (tcp://x.tcp.ngrok.io:xxxxx)
4. SSH: `ssh root@x.tcp.ngrok.io -p xxxxx`

## Notes
- ngrok free tier has limits
- Container sleeps if no activity sometimes on free plans
