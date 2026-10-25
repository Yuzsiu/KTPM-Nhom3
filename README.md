# Website Bán Laptop (Java Spring Boot)

Website bán laptop được xây dựng bằng Java Spring Boot, sử dụng MySQL để lưu trữ dữ liệu và Thymeleaf để hiển thị giao diện.

## 🚀 Công nghệ sử dụng

- **Backend:** Java 17, Spring Boot 4.0.5
- **Database:** MySQL
- **ORM:** Spring Data JPA (Hibernate)
- **Frontend:** HTML, CSS, Thymeleaf
- **Build Tool:** Maven (có sẵn Maven Wrapper)

## 📋 Yêu cầu môi trường

Trước khi chạy website, cần chuẩn bị:

1. **JDK 17** (kiểm tra bằng lệnh `java -version`).
2. **MySQL Server** đang hoạt động; có thể dùng MySQL Workbench để quản lý dữ liệu.
3. **IDE** như IntelliJ IDEA, Eclipse hoặc VS Code (không bắt buộc nếu chạy bằng terminal).
4. **Git** nếu muốn tải mã nguồn bằng `git clone`.

> Dự án có sẵn `mvnw` và `mvnw.cmd`, không cần cài Maven riêng.

## ⚙️ Hướng dẫn cài đặt và chạy chương trình

### Bước 1: Tải mã nguồn

Mở PowerShell hoặc terminal và chạy:

```powershell
git clone https://github.com/Yuzsiu/KTPM-Nhom3.git
cd KTPM-Nhom3
```

Nếu đã tải repository về máy thì bỏ qua bước clone.

### Bước 2: Khởi tạo cơ sở dữ liệu

1. Khởi động **MySQL Server** và mở MySQL Workbench (hoặc công cụ tương đương).
2. Tạo database bằng câu lệnh:

```sql
CREATE DATABASE IF NOT EXISTS website_ban_laptop_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
```

3. Mở file `websitelaptop_init_official_final.sql` ở thư mục gốc repository và thực thi script trên database `website_ban_laptop_db` để tạo bảng, nhập dữ liệu mẫu.

**Lưu ý:** Nếu database đã có dữ liệu, hãy sao lưu trước khi chạy lại file SQL. Không cần import lại nếu database trên máy đã được khởi tạo đầy đủ.

### Bước 3: Cấu hình kết nối MySQL

Mở thư mục `website-ban-laptop` trong IDE, sau đó mở file:

`src/main/resources/application.properties`

Cấu hình kết nối hiện tại:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/website_ban_laptop_db?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true
spring.datasource.username=root
spring.datasource.password=${DB_PASSWORD}
```

Đặt biến môi trường `DB_PASSWORD` bằng mật khẩu MySQL trên máy. Ví dụ, trong **PowerShell**:

```powershell
$env:DB_PASSWORD = Read-Host "Nhap mat khau MySQL"
```

Lệnh này áp dụng cho phiên PowerShell hiện tại. Nếu chạy website trực tiếp bằng IDE, hãy khai báo biến môi trường `DB_PASSWORD` trong cấu hình chạy của IDE.

> Không ghi mật khẩu MySQL trực tiếp vào mã nguồn hoặc đẩy mật khẩu lên GitHub.

### Bước 4: Chạy ứng dụng

**Cách 1: Chạy bằng IDE**

1. Mở thư mục `website-ban-laptop` trong IDE.
2. Tìm file `WebsiteBanLaptopApplication.java` trong `src/main/java`.
3. Chạy phương thức `main()` của lớp ứng dụng.
4. Bảo đảm IDE đã nhận biến môi trường `DB_PASSWORD`.

**Cách 2: Chạy bằng PowerShell (Windows)**

Từ thư mục gốc repository:

```powershell
cd website-ban-laptop
$env:DB_PASSWORD = Read-Host "Nhap mat khau MySQL"
.\mvnw.cmd spring-boot:run
```

**Trên macOS/Linux:**

```bash
cd website-ban-laptop
export DB_PASSWORD='mat_khau_mysql_cua_ban'
./mvnw spring-boot:run
```

### Bước 5: Truy cập website

Khi ứng dụng khởi động thành công, mở trình duyệt tại:

**http://localhost:8080**

Đây là địa chỉ mặc định của Spring Boot nếu chưa cấu hình cổng khác. Nhấn `Ctrl+C` trong terminal để dừng ứng dụng.

## 📂 Cấu trúc thư mục chính

```text
KTPM-Nhom3/
├── README.md
├── websitelaptop_init_official_final.sql    # Script cơ sở dữ liệu
└── website-ban-laptop/                     # Dự án Spring Boot
    ├── .mvn/                               # Maven Wrapper
    ├── mvnw
    ├── mvnw.cmd
    ├── pom.xml                             # Cấu hình Maven và thư viện
    ├── insert_products.sql
    └── src/
        ├── main/
        │   ├── java/                       # Mã nguồn Java
        │   │   └── com/websitelaptop/
        │   └── resources/
        │       ├── static/                 # CSS, JavaScript, hình ảnh
        │       ├── templates/              # Giao diện Thymeleaf
        │       └── application.properties  # Cấu hình ứng dụng
        └── test/                           # Mã kiểm tra tự động (nếu có)
```

## 🔧 Một số lệnh hữu ích

Chạy trong thư mục `website-ban-laptop`:

```powershell
# Biên dịch dự án
.\mvnw.cmd clean compile

# Khởi động website
.\mvnw.cmd spring-boot:run
```

Nếu không kết nối được MySQL, hãy kiểm tra MySQL Server, tên database, tài khoản `root`, mật khẩu trong `DB_PASSWORD` và cổng `3306`.
