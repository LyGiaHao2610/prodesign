---
mo-ta: Đồng bộ lại context khi project thay đổi
---

# Lệnh /sync

Cập nhật lại các file docs khi project có thay đổi.

## Khi nào Dùng

- Sau khi thêm dependencies mới
- Sau khi thay đổi design system
- Sau khi pivot sản phẩm
- Định kỳ để đảm bảo docs up-to-date

## Cách dùng

```
/sync              # Sync tất cả
/sync tech         # Chỉ sync công nghệ
/sync design       # Chỉ sync design system
/sync product      # Chỉ sync thông tin sản phẩm
```

## Quy trình

### /sync tech

1. Đọc lại `package.json`
2. So sánh với `.claude/docs/cong-nghe.md` hiện tại
3. Báo cáo thay đổi:

```markdown
## 🔄 Thay đổi Công nghệ

### ➕ Thêm mới
- @tanstack/react-query (v5.0.0) - Data fetching
- framer-motion (v10.0.0) - Animations

### ➖ Đã xóa
- axios (thay bằng fetch)

### 🔄 Cập nhật
- react: 18.2.0 → 18.3.0

Bạn có muốn tôi cập nhật docs không? (y/n)
```

### /sync design

1. Đọc lại `tailwind.config.*`
2. So sánh với `.claude/docs/he-thong-thiet-ke.md`
3. Báo cáo thay đổi:

```markdown
## 🎨 Thay đổi Design System

### Colors
- ➕ Thêm: accent (#F59E0B)
- 🔄 Đổi: primary #3B82F6 → #2563EB

### Typography
- 🔄 Font: Inter → Geist

Cập nhật docs? (y/n)
```

### /sync product

Hỏi lại các câu hỏi về sản phẩm:

```markdown
## 📦 Cập nhật Thông tin Sản phẩm

Thông tin hiện tại:
- Tên: MoneyWise
- Người dùng: Người đi làm 25-35 tuổi
- Giai đoạn: MVP

Có gì thay đổi không?
1. Tên sản phẩm
2. Người dùng mục tiêu
3. Vấn đề giải quyết
4. Tính năng chính
5. Đối thủ
6. Giai đoạn

Nhập số để cập nhật (hoặc "skip" để bỏ qua):
```

### /sync (tất cả)

Chạy cả 3 sync theo thứ tự:
1. Tech → Design → Product
2. Tóm tắt tất cả thay đổi
3. Xác nhận một lần

## Output

```markdown
## ✅ Đồng bộ Hoàn tất

| File | Trạng thái |
|------|------------|
| cong-nghe.md | 🔄 Cập nhật 3 thay đổi |
| he-thong-thiet-ke.md | ✅ Không đổi |
| boi-canh-san-pham.md | 🔄 Cập nhật persona |

Context đã được cập nhật. Tôi sẽ sử dụng thông tin mới 
cho các câu hỏi tiếp theo.
```

## Ví dụ

```
Người dùng: /sync

Claude: Đang scan project...

📦 package.json: 2 dependencies mới
🎨 tailwind.config: Không đổi
📝 Thông tin sản phẩm: Chưa kiểm tra

[Chi tiết thay đổi...]

Cập nhật docs? (y/n)
```

