---
mo-ta: Phân tích và tổng hợp phản hồi khách hàng
---

# Lệnh /phan-hoi

Phân tích phản hồi khách hàng để rút ra insights và đề xuất.

## Cách dùng
```
/phan-hoi [dán phản hồi hoặc tham chiếu nguồn]
```

## Hướng dẫn

1. **Thu thập phản hồi**: Từ văn bản cung cấp hoặc nguồn tham chiếu
2. **Phân loại**: Nhóm theo chủ đề
3. **Phân tích cảm xúc**: Tích cực, trung lập, tiêu cực
4. **Rút ra insights**: Xu hướng, điểm đau, yêu cầu
5. **Ưu tiên**: Dựa trên tần suất và mức độ ảnh hưởng
6. **Đề xuất**: Các bước tiếp theo

## Định dạng Đầu ra

```markdown
# Phân tích Phản hồi

## Tổng quan
- **Số phản hồi**: [N]
- **Thời gian**: [Phạm vi nếu biết]

## Cảm xúc

| Cảm xúc | Số lượng | Tỷ lệ |
|---------|----------|-------|
| 😊 Tích cực | [N] | [%] |
| 😐 Trung lập | [N] | [%] |
| 😞 Tiêu cực | [N] | [%] |

## Chủ đề Nổi bật

### 1. [Chủ đề] (X lượt đề cập)
> "[Trích dẫn đại diện]"
- **Cảm xúc**: Chủ yếu tích cực/tiêu cực
- **Nhận xét**: [Ý nghĩa]

## Yêu cầu Tính năng

| Yêu cầu | Tần suất | Ưu tiên |
|---------|----------|---------|
| [Yêu cầu] | Cao/TB/Thấp | P1/P2/P3 |

## Điểm Đau

1. **[Điểm đau]**: [Mô tả] - Mức độ: Cao/TB/Thấp

## Đề xuất

| Ưu tiên | Hành động | Tác động Dự kiến |
|---------|-----------|------------------|
| P0 | [Hành động] | [Tác động] |
| P1 | [Hành động] | [Tác động] |
```

## Ví dụ
```
Người dùng: /phan-hoi [dán đánh giá khách hàng hoặc kết quả khảo sát]

Claude: Tôi sẽ phân tích phản hồi khách hàng...
```
