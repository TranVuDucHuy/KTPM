## 1. Docker là gì?

Docker là một nền tảng mở để phát triển, vận chuyển và chạy ứng dụng. Docker cho phép quản lý cơ sở hạ tầng theo cách tương tự như quản lý ứng dụng.

Docker đóng gói phần mềm vào các đơn vị được tiêu chuẩn hóa được gọi là container có mọi thứ mà phần mềm cần để chạy, bao gồm thư viện, công cụ hệ thống, mã và thời gian hoạt động.
Cũng tương tự như cách máy ảo ảo hóa (loại bỏ nhu cầu quản lý trực tiếp) phần cứng máy chủ, các container sẽ ảo hóa hệ điều hành của máy chủ.

Docker sử dụng kiến ​​trúc client-server.
<img width="1233" height="651" alt="image" src="https://github.com/user-attachments/assets/e7cfdb46-0f9c-4ba6-85bb-3c5e12619a4f" />

Container image là một gói chuẩn hóa bao gồm tất cả các tệp, tệp nhị phân, thư viện và cấu hình để chạy container. Image sau khi tạo không thể thay đổi. Container image được tạo thành từ nhiều lớp.

Nguồn tham khảo:
https://aws.amazon.com/vi/docker/
https://docs.docker.com/get-started/docker-overview/

## 2. Docker Compose là gì?
Docker Compose giúp định nghĩa và quản lý nhiều container trong cùng một ứng dụng chỉ bằng một file cấu hình YAML (docker-compose.yml).

Thay vì phải chạy từng lệnh ```docker run ...``` để tạo các container thì chỉ cần viết cấu hình một lần, rồi chạy ``docker compose up``` là tất cả container sẽ được dựng lên và kết nối với nhau tự động.
Dockerfile cung cấp hướng dẫn để xây dựng một ảnh container, trong khi tệp Compose định nghĩa các container đang chạy của bạn. Thông thường, tệp Compose tham chiếu đến Dockerfile để xây dựng một ảnh sử dụng cho một dịch vụ cụ thể.

## 3. Desktop Environment là gì?
Desktop Environment là một tập hợp phần mềm giao diện đồ họa (GUI) trên hệ điều hành, giúp người dùng tương tác với máy tính một cách trực quan thay vì chỉ dùng dòng lệnh (terminal).

Nó bao gồm: Window manager, Icons, panels, menus, taskbars, Ứng dụng cơ bản

Một vài DE phổ biến:

- Linux: GNOME, KDE Plasma, XFCE, LXDE/LXQt, Cinnamon, MATE


- Windows: Windows Desktop Environment (Taskbar, Start Menu, Explorer…).


- macOS: Aqua (Dock, Finder, Spotlight…).

## 4. Hệ điều hành

Unix là hệ điều hành ban đầu, khai sinh ra họ các hệ điều hành *nix. BSD và Linux là 2 nhánh được sinh ra từ Unix. macOS có thành phần BSD bên trong. Alpine và Ubuntu là 2 bản phân phối của Linux, trong đó Alpine nhẹ hơn còn Ubuntu toàn diện và nhiều dịch vụ hơn.

## 5. VNC là gì?
VNC (Virtual Network Computing) là một giao thức và hệ thống cho phép điều khiển máy tính từ xa thông qua GUI.

VNC dựa trên Remote Framebuffer Protocol (RFB), thường kết nối qua TCP/IP mặc định cổng 5900+ N, trong đó N là số hiển thị. Server chạy trên máy cần được điều khiển, gửi hình ảnh màn hình (framebuffer) ra ngoài. Client chạy trên máy điều khiển, hiển thị màn hình nhận được và gửi lại các thao tác chuột, bàn phím.
