FROM ubuntu:22.04

# Ngăn apt hỏi khi cài đặt
ENV DEBIAN_FRONTEND=noninteractive

# Cài đặt các gói cần thiết
RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    xfce4 xfce4-goodies \
    tigervnc-standalone-server tigervnc-tools \
    openssh-server nano \
    dbus-x11 x11-xserver-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Tạo user devuser và cấp quyền sudo không cần password
RUN useradd -m -s /bin/bash devuser \
    && echo "devuser:password" | chpasswd \
    && mkdir -p /etc/sudoers.d \
    && adduser devuser sudo \
    && echo "devuser ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/devuser-nopasswd

# Tạo sẵn thư mục .vnc và file password cho VNC
RUN mkdir -p /home/devuser/.vnc \
    && echo "password" | vncpasswd -f > /home/devuser/.vnc/passwd \
    && chmod 600 /home/devuser/.vnc/passwd \
    && chown -R devuser:devuser /home/devuser/.vnc

# Copy script startup vào image
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh && chown devuser:devuser /startup.sh

# Expose cổng cho VNC và SSH
EXPOSE 5901 22

# Đặt user mặc định là devuser (an toàn hơn chạy root)
USER devuser

# Chạy script
CMD ["/startup.sh"]
