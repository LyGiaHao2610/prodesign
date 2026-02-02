---
mo-ta: Đánh giá thiết kế giao diện và đưa ra góp ý
---

# Lệnh /review-thiet-ke

Phân tích thiết kế và đưa ra góp ý có cấu trúc.

## Cách dùng
```
/review-thiet-ke [mô tả hoặc link hình ảnh]
```

## Hướng dẫn

1. **Phân tích thiết kế** theo khung từ `@agent-thiet-ke`
2. **Kiểm tra**:
   - Tính dễ dùng (người dùng có hoàn thành được mục tiêu không?)
   - Thiết kế trực quan (thứ tự, khoảng cách, màu sắc)
   - Khả năng tiếp cận (độ tương phản, vùng chạm, nhãn)
   - Tính nhất quán (theo đúng hệ thống thiết kế không?)

3. **Đưa ra góp ý** theo định dạng:

```markdown
## Đánh giá Thiết kế: [Tên Màn hình]

### ✅ Điểm Tốt
- [Điểm tích cực 1]
- [Điểm tích cực 2]

### ⚠️ Vấn đề Phát hiện

**Vấn đề 1: [Tiêu đề]**
- Vấn đề: [Mô tả]
- Ảnh hưởng: [Tác động người dùng]
- Đề xuất: [Cách sửa]
- Độ ưu tiên: Cao/Trung bình/Thấp

### 💡 Ý tưởng Cải tiến
- [Ý tưởng 1]
- [Ý tưởng 2]

### Tóm tắt
| Tiêu chí | Đánh giá |
|----------|----------|
| Tính dễ dùng | ✅ / ⚠️ / ❌ |
| Thiết kế trực quan | ✅ / ⚠️ / ❌ |
| Khả năng tiếp cận | ✅ / ⚠️ / ❌ |
| Tính nhất quán | ✅ / ⚠️ / ❌ |
```

## Ví dụ
```
Người dùng: /review-thiet-ke trang đăng nhập

Claude: Tôi sẽ đánh giá thiết kế trang đăng nhập...
```
