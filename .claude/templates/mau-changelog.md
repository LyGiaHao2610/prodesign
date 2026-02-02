# Changelog

Tất cả thay đổi đáng chú ý của dự án sẽ được ghi lại trong file này.

Format dựa trên [Keep a Changelog](https://keepachangelog.com/vi/1.0.0/),
và dự án tuân theo [Semantic Versioning](https://semver.org/lang/vi/).

---

## [Unreleased]

### ✨ Added (Thêm mới)
- [Tính năng mới]

### 🔄 Changed (Thay đổi)
- [Thay đổi trong tính năng có sẵn]

### 🗑️ Deprecated (Sắp loại bỏ)
- [Tính năng sắp bị loại bỏ trong tương lai]

### ❌ Removed (Đã loại bỏ)
- [Tính năng đã bị loại bỏ]

### 🐛 Fixed (Sửa lỗi)
- [Các bug đã được sửa]

### 🔒 Security (Bảo mật)
- [Các vấn đề bảo mật đã được xử lý]

---

## [1.2.0] - 2026-01-15

### ✨ Added
- Thêm tính năng đăng nhập bằng Google (#123)
- Thêm dark mode cho toàn bộ ứng dụng (#145)
- Thêm component `Avatar` với 3 kích thước (sm, md, lg)

### 🔄 Changed
- Cập nhật giao diện trang Dashboard (#150)
- Cải thiện hiệu suất load danh sách sản phẩm (giảm 40% thời gian)
- Thay đổi font chữ từ Inter sang Be Vietnam Pro

### 🐛 Fixed
- Sửa lỗi không thể đăng xuất trên Safari (#142)
- Sửa lỗi form validation không hoạt động với số điện thoại VN (#138)
- Sửa lỗi layout vỡ trên màn hình < 375px (#136)

### 🔒 Security
- Cập nhật dependency `lodash` để fix CVE-2021-23337

---

## [1.1.0] - 2026-01-01

### ✨ Added
- Thêm tính năng tìm kiếm sản phẩm (#100)
- Thêm bộ lọc theo danh mục và giá (#102)
- Thêm trang "Về chúng tôi" (#105)

### 🔄 Changed
- Redesign trang chủ theo design mới (#98)
- Tối ưu SEO cho tất cả các trang (#99)

### 🐛 Fixed
- Sửa lỗi không load được hình ảnh trên iOS 15 (#95)
- Sửa lỗi scroll không mượt trên mobile (#92)

---

## [1.0.0] - 2025-12-15

### ✨ Added
- Ra mắt phiên bản đầu tiên 🎉
- Tính năng đăng ký/đăng nhập
- Tính năng xem danh sách sản phẩm
- Tính năng giỏ hàng
- Tính năng thanh toán cơ bản
- Responsive cho mobile, tablet, desktop

---

## Template Entry

Copy template dưới đây khi thêm version mới:

```markdown
## [X.Y.Z] - YYYY-MM-DD

### ✨ Added
- 

### 🔄 Changed
- 

### 🗑️ Deprecated
- 

### ❌ Removed
- 

### 🐛 Fixed
- 

### 🔒 Security
- 
```

---

## Hướng dẫn Versioning

### Semantic Versioning (MAJOR.MINOR.PATCH)

| Loại | Khi nào tăng | Ví dụ |
|------|--------------|-------|
| **MAJOR** | Breaking changes, không tương thích ngược | 1.0.0 → 2.0.0 |
| **MINOR** | Thêm tính năng mới, tương thích ngược | 1.0.0 → 1.1.0 |
| **PATCH** | Sửa lỗi, không thêm tính năng | 1.0.0 → 1.0.1 |

### Quy tắc viết Changelog

1. **Viết cho người dùng**, không phải developer
2. **Mỗi version một section**, mới nhất ở trên
3. **Unreleased section** luôn ở đầu
4. **Ngày tháng** theo format ISO (YYYY-MM-DD)
5. **Link đến PR/Issue** khi có thể (#123)
6. **Sử dụng emoji** để dễ scan

---

## Links

[Unreleased]: https://github.com/username/repo/compare/v1.2.0...HEAD
[1.2.0]: https://github.com/username/repo/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/username/repo/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/username/repo/releases/tag/v1.0.0

