Website Bán Laptop (Java Spring Boot)
🚀 Công Nghệ Sử Dụng
Backend: Java 17, Spring Boot 4.0.5
Database: MySQL
ORM: Spring Data JPA (Hibernate)
Frontend: HTML, CSS, Thymeleaf
Build Tool: Maven (Maven Wrapper)
📋 Yêu Cầu Môi Trường (Prerequisites)
Để chạy dự án, máy tính cần có:
JDK 17 (hoặc phiên bản Java tương thích với dự án).
MySQL Server (có thể dùng MySQL Workbench để quản lý cơ sở dữ liệu).
IDE như IntelliJ IDEA, Eclipse hoặc VS Code (không bắt buộc nếu chạy bằng terminal).
Git nếu muốn tải mã nguồn bằng lệnh `git clone`.
> Dự án đã có Maven Wrapper (`mvnw`, `mvnw.cmd`), không bắt buộc cài Maven riêng.
⚙️ Hướng Dẫn Cài Đặt & Chạy Chương Trình
Bước 1: Khởi tạo cơ sở dữ liệu (Database)
Khởi động MySQL Server và mở MySQL Workbench (hoặc công cụ tương đương).
Tạo database với tên `website_ban_laptop_db`:
```sql
   CREATE DATABASE IF NOT EXISTS website_ban_laptop_db
   CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   ```
Mở file `websitelaptop_init_official_final.sql` nằm ở thư mục gốc repository và thực thi bằng công cụ MySQL để tạo bảng, nạp dữ liệu mẫu.
Lưu ý: Nếu database đã có dữ liệu, hãy sao lưu trước khi chạy lại script SQL để tránh thay đổi dữ liệu hiện có.
Bước 2: Cấu hình kết nối Database
Mở thư mục `website-ban-laptop` trong IDE.
Mở file `src/main/resources/application.properties`.
Cấu hình hiện tại của dự án:
```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/website_ban_laptop_db?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true
   spring.datasource.username=root
   spring.datasource.password=${DB_PASSWORD}
   ```
Đặt biến môi trường `DB_PASSWORD` bằng mật khẩu MySQL trên máy của bạn. Ví dụ trong PowerShell:
```powershell
   $env:DB_PASSWORD = Read-Host "Nhap mat khau MySQL"
   ```
Lệnh này chỉ đặt biến môi trường cho phiên PowerShell hiện tại. Nếu chạy bằng IDE, hãy cấu hình biến môi trường `DB_PASSWORD` trong phần Run Configuration của IDE.
> Không đưa mật khẩu MySQL trực tiếp vào mã nguồn hoặc commit lên GitHub.
Bước 3: Chạy ứng dụng
Có thể chọn một trong hai cách sau:
Cách 1: Chạy bằng IDE
Mở thư mục `website-ban-laptop` như một dự án Maven.
Tìm file `WebsiteBanLaptopApplication.java` trong `src/main/java`.
Chạy phương thức `main()` của lớp này.
Đảm bảo IDE đã nhận biến môi trường `DB_PASSWORD`.
Cách 2: Chạy bằng Terminal / PowerShell (Maven Wrapper)
Từ thư mục gốc repository:
```powershell
cd website-ban-laptop
$env:DB_PASSWORD = Read-Host "Nhap mat khau MySQL"
.\mvnw.cmd spring-boot:run
```
Trên macOS hoặc Linux, sử dụng `./mvnw spring-boot:run` (và thiết lập biến môi trường theo shell tương ứng).
Bước 4: Truy cập ứng dụng
Khi ứng dụng khởi động thành công, mở trình duyệt tại:
http://localhost:8080
Để dừng ứng dụng đang chạy trong terminal, nhấn `Ctrl + C`.
📂 Cấu Trúc Thư Mục Chính
```text
KTPM-Nhom3/
│
├── README.md
├── websitelaptop_init_official_final.sql   # Script cơ sở dữ liệu
└── website-ban-laptop/                    # Mã nguồn ứng dụng
    ├── pom.xml                            # Cấu hình Maven
    ├── mvnw                               # Maven Wrapper (macOS/Linux)
    ├── mvnw.cmd                           # Maven Wrapper (Windows)
    ├── .mvn/
    └── src/
        ├── main/
        │   ├── java/com/websitelaptop/website-ban-laptop/
        │   │   ├── config/                # Cấu hình ứng dụng
        │   │   ├── controller/            # Xử lý yêu cầu
        │   │   ├── model/                 # Thành phần dữ liệu/nghiệp vụ
        │   │   ├── security/              # Cấu hình bảo mật
        │   │   └── WebsiteBanLaptopApplication.java
        │   └── resources/
        │       ├── static/                # CSS, JS, hình ảnh
        │       ├── templates/             # Giao diện HTML (Thymeleaf)
        │       └── application.properties # Cấu hình kết nối
        └── test/                          # Mã kiểm tra tự động (nếu có)
```
❗ Một Số Lỗi Thường Gặp
Không kết nối được MySQL: Kiểm tra MySQL Server đã chạy, tên database, cổng `3306`, tài khoản và biến `DB_PASSWORD`.
Cổng 8080 đã được sử dụng: Dừng ứng dụng đang chiếm cổng hoặc đổi cổng bằng cấu hình `server.port`.
Không chạy được Maven Wrapper: Kiểm tra JDK và biến môi trường `JAVA_HOME`; bảo đảm đang đứng trong thư mục `website-ban-laptop`.
---
