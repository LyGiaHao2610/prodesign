---
mo-ta: Tạo PRD từ ý tưởng tính năng
---

# Lệnh /prd

Tạo Tài liệu Yêu cầu Sản phẩm đầy đủ.

## Cách dùng
```
/prd [mô tả tính năng]
```

## Hướng dẫn

Khi lệnh được gọi:

1. **Nếu không có mô tả**: Hỏi người dùng mô tả tính năng
2. **Nếu mô tả mơ hồ**: Hỏi làm rõ:
   - Ai là người dùng mục tiêu?
   - Vấn đề cần giải quyết là gì?
   - Kết quả mong đợi là gì?
   - Có ràng buộc hay phụ thuộc gì không?

3. **Tạo PRD** theo mẫu từ `@agent-prd`

4. **Xác nhận với người dùng**: Hỏi có phần nào cần làm rõ thêm

## Ví dụ

```
Người dùng: /prd luồng đăng ký tài khoản mới

Claude: Tôi sẽ tạo PRD cho tính năng "Đăng ký tài khoản mới".
        Trước tiên, cho tôi hỏi thêm vài điều...
```
