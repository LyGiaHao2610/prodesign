# Hệ thống Thiết kế

> **Hướng dẫn**: Điền hướng dẫn thiết kế của sản phẩm. Claude sẽ tham khảo file này khi tạo code giao diện hoặc đánh giá thiết kế.

## Thương hiệu

**Tên thương hiệu**: [Tên]

**Giọng điệu**: [Mô tả - ví dụ: thân thiện, chuyên nghiệp, vui vẻ]

**Giá trị thương hiệu**: 
- [Giá trị 1]
- [Giá trị 2]
- [Giá trị 3]

---

## Màu sắc

### Màu Chính
| Tên | Mã màu | Sử dụng |
|-----|--------|---------|
| Chính | `#[mã]` | Hành động chính, link |
| Chính Sáng | `#[mã]` | Trạng thái hover |
| Chính Tối | `#[mã]` | Trạng thái nhấn |

### Màu Phụ
| Tên | Mã màu | Sử dụng |
|-----|--------|---------|
| Phụ | `#[mã]` | Hành động phụ |

### Màu Trung tính
| Tên | Mã màu | Sử dụng |
|-----|--------|---------|
| Xám 900 | `#111827` | Chữ chính |
| Xám 600 | `#4B5563` | Chữ phụ |
| Xám 400 | `#9CA3AF` | Chữ mờ |
| Xám 200 | `#E5E7EB` | Viền |
| Xám 100 | `#F3F4F6` | Nền |
| Trắng | `#FFFFFF` | Nền thẻ |

### Màu Ngữ nghĩa
| Tên | Mã màu | Sử dụng |
|-----|--------|---------|
| Thành công | `#10B981` | Trạng thái thành công |
| Cảnh báo | `#F59E0B` | Trạng thái cảnh báo |
| Lỗi | `#EF4444` | Trạng thái lỗi |
| Thông tin | `#3B82F6` | Trạng thái thông tin |

---

## Chữ

**Font chữ**: 
- Tiêu đề: [Tên font]
- Nội dung: [Tên font]
- Code: [Tên font]

### Kích thước
| Tên | Kích thước | Độ đậm | Chiều cao dòng |
|-----|------------|--------|----------------|
| H1 | 36px | Đậm (700) | 1.2 |
| H2 | 30px | Nửa đậm (600) | 1.3 |
| H3 | 24px | Nửa đậm (600) | 1.4 |
| H4 | 20px | Vừa (500) | 1.4 |
| Thường | 16px | Thường (400) | 1.5 |
| Nhỏ | 14px | Thường (400) | 1.5 |
| Rất nhỏ | 12px | Thường (400) | 1.5 |

---

## Khoảng cách

| Tên | Giá trị | Sử dụng |
|-----|---------|---------|
| xs | 4px | Khoảng cách chật |
| sm | 8px | Phần tử liên quan |
| md | 16px | Mặc định |
| lg | 24px | Khoảng cách phần |
| xl | 32px | Phần lớn |
| 2xl | 48px | Phần trang |

---

## Bo góc

| Tên | Giá trị | Sử dụng |
|-----|---------|---------|
| Không | 0 | Cạnh sắc |
| Nhỏ | 4px | Bo nhẹ |
| Vừa | 8px | Mặc định (nút, thẻ) |
| Lớn | 12px | Phần tử lớn |
| Tròn | 9999px | Pills, avatar |

---

## Đổ bóng

| Tên | Giá trị | Sử dụng |
|-----|---------|---------|
| Nhỏ | `0 1px 2px rgba(0,0,0,0.05)` | Nâng nhẹ |
| Vừa | `0 4px 6px rgba(0,0,0,0.1)` | Thẻ, dropdown |
| Lớn | `0 10px 15px rgba(0,0,0,0.1)` | Modal |

---

## Components

### Nút bấm

**Nút Chính**
- Nền: Màu chính
- Chữ: Trắng
- Bo góc: Vừa
- Padding: 12px 24px
- Hover: Chính Tối

**Nút Phụ**
- Nền: Trắng
- Chữ: Xám 900
- Viền: 1px Xám 200
- Hover: Nền Xám 100

**Trạng thái**
- Mặc định → Hover → Nhấn → Vô hiệu
- Vô hiệu: 50% opacity, con trỏ không cho phép

### Ô nhập liệu

- Viền: 1px Xám 200
- Bo góc: Vừa
- Padding: 12px 16px
- Focus: Viền màu chính, có ring
- Lỗi: Viền màu lỗi

### Thẻ

- Nền: Trắng
- Bo góc: Lớn
- Bóng: Vừa
- Padding: lg (24px)

---

## Khả năng Tiếp cận

- Độ tương phản màu: Tối thiểu 4.5:1 cho chữ
- Trạng thái focus: Outline rõ ràng cho điều hướng bàn phím
- Vùng chạm: Tối thiểu 44x44px
- Mô tả hình ảnh: Bắt buộc cho tất cả hình ảnh
- HTML có nghĩa: Sử dụng đúng thứ tự heading

---

## Responsive

| Tên | Chiều rộng | Sử dụng |
|-----|------------|---------|
| sm | 640px | Điện thoại ngang |
| md | 768px | Máy tính bảng |
| lg | 1024px | Laptop nhỏ |
| xl | 1280px | Desktop |
| 2xl | 1536px | Màn hình lớn |

---

## Tài nguyên

- **Figma**: [Link đến file Figma]
- **Storybook**: [Link đến Storybook]
- **Icons**: [Thư viện icon - ví dụ: Lucide, Heroicons]

---

*Cập nhật lần cuối: [Ngày]*
