# Khung Ưu Tiên Tính Năng

## Tổng Quan

Hướng dẫn các phương pháp ưu tiên tính năng phổ biến giúp Product Owner đưa ra quyết định dựa trên dữ liệu.

---

## 1. Ma Trận RICE

### Công Thức
```
RICE Score = (Reach × Impact × Confidence) / Effort
```

### Các Thành Phần

| Yếu tố | Mô tả | Cách đo |
|--------|-------|---------|
| **Reach** | Số người dùng bị ảnh hưởng | Số lượng/quý |
| **Impact** | Mức độ ảnh hưởng | 0.25 (nhỏ) → 3 (lớn) |
| **Confidence** | Độ tin cậy ước tính | 50% → 100% |
| **Effort** | Công sức (person-months) | 0.5 → 6+ |

### Thang Đo Impact
| Điểm | Mức độ | Mô tả |
|------|--------|-------|
| 3 | Massive | Thay đổi hoàn toàn trải nghiệm |
| 2 | High | Cải thiện đáng kể |
| 1 | Medium | Cải thiện vừa phải |
| 0.5 | Low | Cải thiện nhỏ |
| 0.25 | Minimal | Hầu như không ảnh hưởng |

### Ví Dụ
```
Tính năng: Đăng nhập bằng Google
- Reach: 10,000 users/quý
- Impact: 2 (giảm friction đăng ký)
- Confidence: 80%
- Effort: 1 person-month

RICE = (10,000 × 2 × 0.8) / 1 = 16,000
```

---

## 2. Ma Trận MoSCoW

### Phân Loại

| Loại | Ý nghĩa | Tỷ lệ đề xuất |
|------|---------|---------------|
| **Must Have** | Bắt buộc, không có thì sản phẩm thất bại | 60% |
| **Should Have** | Quan trọng nhưng không khẩn cấp | 20% |
| **Could Have** | Có thì tốt, không có không sao | 15% |
| **Won't Have** | Không làm trong scope này | 5% |

### Câu Hỏi Phân Loại

**Must Have:**
- Không có tính năng này, sản phẩm có dùng được không?
- Có ảnh hưởng pháp lý/bảo mật không?
- Khách hàng có từ chối dùng nếu thiếu không?

**Should Have:**
- Tính năng này có giải quyết pain point lớn không?
- Có thể workaround được không?

**Could Have:**
- Tính năng này là "nice to have" hay "need to have"?
- Nếu bỏ, ai sẽ phàn nàn?

---

## 3. Ma Trận Giá Trị vs Công Sức

```
         ▲ Giá Trị Cao
         │
    ┌────┼────┐ ┌────┼────┐
    │ LÀM│SAU │ │ LÀM│NGAY│
    │    │    │ │    │    │
    └────┼────┘ └────┼────┘
─────────┼─────────────────▶ Công Sức
    ┌────┼────┐ ┌────┼────┐
    │KHÔNG│LÀM│ │ CÂN│NHẮC│
    │     │   │ │    │    │
    └─────┼───┘ └────┼────┘
         │
         ▼ Giá Trị Thấp
```

| Góc | Hành động |
|-----|-----------|
| **Cao/Thấp** | ⭐ Quick wins - Làm ngay |
| **Cao/Cao** | 📅 Big bets - Lên lịch |
| **Thấp/Thấp** | 🤔 Fill-ins - Khi rảnh |
| **Thấp/Cao** | ❌ Money pits - Bỏ qua |

---

## 4. Mô Hình Kano

### 3 Loại Tính Năng

| Loại | Mô tả | Ví dụ |
|------|-------|-------|
| **Basic** | Phải có, thiếu thì thất vọng | App không crash |
| **Performance** | Càng nhiều càng hài lòng | Tốc độ load nhanh |
| **Delighter** | Bất ngờ, gây vui | Animation đẹp |

### Cách Xác Định
Hỏi 2 câu:
1. Nếu CÓ tính năng này, bạn cảm thấy thế nào?
2. Nếu KHÔNG CÓ tính năng này, bạn cảm thấy thế nào?

| Có → | Không → | Loại |
|------|---------|------|
| Thích | Không thích | Performance |
| Bình thường | Không thích | Basic |
| Thích | Bình thường | Delighter |

---

## 5. ICE Scoring

### Công Thức
```
ICE Score = Impact × Confidence × Ease
```

Mỗi yếu tố: 1-10

### So Sánh ICE vs RICE

| ICE | RICE |
|-----|------|
| Nhanh, đơn giản | Chi tiết hơn |
| Không tính Reach | Tính Reach |
| Dùng cho growth hacking | Dùng cho product roadmap |

---

## Khi Nào Dùng Framework Nào?

| Tình huống | Framework |
|------------|-----------|
| Roadmap hàng quý | RICE |
| Sprint planning | MoSCoW |
| Quick prioritization | ICE hoặc Value/Effort |
| Hiểu người dùng | Kano |

---

## Template Bảng Ưu Tiên

```markdown
| Tính năng | RICE | MoSCoW | Quyết định |
|-----------|------|--------|------------|
| Feature A | 5000 | Must   | Sprint 1   |
| Feature B | 3000 | Should | Sprint 2   |
| Feature C | 1000 | Could  | Backlog    |
```

---

## Tham Khảo

- [Intercom on RICE](https://www.intercom.com/blog/rice-simple-prioritization-for-product-managers/)
- [ProductPlan on MoSCoW](https://www.productplan.com/glossary/moscow-prioritization/)
- [Kano Model](https://foldingburritos.com/kano-model/)

---

*Cập nhật: Tháng 1, 2026*

