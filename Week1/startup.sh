#!/bin/bash

# Khởi động SSH server (dùng service, không cần sudo vì user đã có quyền)
service ssh start

# Tạo file xstartup cho VNC
cat <<EOF > /home/devuser/.vnc/xstartup
#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
exec startxfce4
EOF
chmod +x /home/devuser/.vnc/xstartup

# Khởi động VNC server
vncserver :1 -geometry 1280x800 -depth 24 -localhost no -rfbauth /home/devuser/.vnc/passwd

# Giữ container chạy bằng cách theo dõi log
echo "VNC and SSH server started."
tail -f /home/devuser/.vnc/*.log
