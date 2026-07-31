#!/bin/bash

echo "===================================="
echo " Allowing WebRTC Required Ports"
echo "===================================="

# Enable UFW
ufw --force enable

# SSH
ufw allow 22/tcp comment 'SSH'

# HTTP / HTTPS
ufw allow 80/tcp comment 'HTTP'
ufw allow 443/tcp comment 'HTTPS'

# Asterisk SIP
ufw allow 5060/udp comment 'SIP UDP'

# IAX2 (Optional)
ufw allow 4569/udp comment 'IAX2'

# Asterisk AMI (Optional - restrict to trusted IP in production)
ufw allow 5038/tcp comment 'AMI'

# Asterisk HTTP
ufw allow 8088/tcp comment 'Asterisk HTTP'

# Asterisk HTTPS / WSS
ufw allow 8089/tcp comment 'Asterisk WSS'

# RTP Media
ufw allow 10000:20000/udp comment 'RTP Media'

# STUN/TURN (Only if using Coturn)
# ufw allow 3478/udp comment 'STUN'
# ufw allow 3478/tcp comment 'TURN'
# ufw allow 5349/tcp comment 'TURN TLS'

echo ""
echo "Reloading Firewall..."
ufw reload

echo ""
echo "Current UFW Rules:"
ufw status numbered

echo ""
echo "Done."

