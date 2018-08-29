
ip="127.0.0.1"
port="2375"

mkdir /etc/systemd/system/docker.service.d
touch /etc/systemd/system/docker.service.d/startup_options.conf
cat > /etc/systemd/system/docker.service.d/startup_options.conf << EOL
# /etc/systemd/system/docker.service.d/override.conf
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// -H tcp://${ip}:${port}

EOL

systemctl daemon-reload
systemctl restart docker.service

