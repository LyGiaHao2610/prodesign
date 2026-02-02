---
mo-ta: Viết user stories từ tính năng hoặc PRD
---

# Lệnh /story

Tạo user stories với tiêu chí chấp nhận đầy đủ.

## Cách dùng
```
/story [tính năng hoặc tham chiếu PRD]
```

## Hướng dẫn

1. **Hiểu tính năng**: Đọc PRD hoặc mô tả được cung cấp
2. **Xác định người dùng**: Ai là các loại người dùng liên quan?
3. **Chia nhỏ thành stories**: Một giá trị mỗi story
4. **Áp dụng tiêu chí INVEST**: Độc lập, Thương lượng được, Có giá trị, Ước lượng được, Nhỏ, Kiểm tra được
5. **Viết tiêu chí chấp nhận**: Định dạng Cho-Khi-Thì

## Định dạng Đầu ra

Mỗi story:
```markdown
## US-[Số]: [Tiêu đề]

**Độ ưu tiên**: P0/P1/P2 | **Điểm**: [ước lượng]

### User Story
Là một [loại người dùng]
Tôi muốn [hành động]
Để [lợi ích]

### Tiêu chí Chấp nhận
- Cho trước [ngữ cảnh], Khi [hành động], Thì [kết quả]

### Ghi chú
- [Ghi chú kỹ thuật]
- [Tham chiếu thiết kế]
```

## Ví dụ

```
Người dùng: /story tính năng giỏ hàng

Claude: Tôi sẽ tạo các user stories cho tính năng giỏ hàng...
```
