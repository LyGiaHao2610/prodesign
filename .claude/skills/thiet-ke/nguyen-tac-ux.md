# Nguyên Tắc UX Cốt Lõi

## Tổng Quan

10 nguyên tắc UX quan trọng nhất mà mọi designer cần nắm vững, dựa trên nghiên cứu khoa học và thực tiễn.

---

## 1. Định Luật Fitts

> Thời gian chạm vào mục tiêu tỷ lệ thuận với khoảng cách và tỷ lệ nghịch với kích thước.

### Áp Dụng
- ✅ Nút CTA lớn (tối thiểu 44x44px)
- ✅ Đặt actions quan trọng ở vị trí dễ với tới
- ✅ Tăng kích thước vùng chạm, không chỉ visual

### Ví Dụ
```
❌ Xấu: Nút "Mua ngay" 20x20px ở góc
✅ Tốt: Nút "Mua ngay" 48x48px ở giữa màn hình
```

---

## 2. Định Luật Hick

> Thời gian quyết định tăng theo số lượng và độ phức tạp của lựa chọn.

### Áp Dụng
- ✅ Giới hạn menu items (7±2)
- ✅ Chia nhỏ form phức tạp thành steps
- ✅ Highlight lựa chọn đề xuất

### Ví Dụ
```
❌ Xấu: 20 options trong dropdown
✅ Tốt: 5 options phổ biến + "Xem thêm"
```

---

## 3. Định Luật Jakob

> Người dùng kỳ vọng trang của bạn hoạt động giống các trang họ đã quen.

### Áp Dụng
- ✅ Logo ở góc trên trái, link về trang chủ
- ✅ Menu ở header hoặc sidebar
- ✅ Icon quen thuộc (🔍 search, 🛒 cart, ❤️ favorite)

### Ví Dụ
```
❌ Xấu: Đặt giỏ hàng ở góc dưới trái
✅ Tốt: Đặt giỏ hàng ở góc trên phải (chuẩn e-commerce)
```

---

## 4. Định Luật Miller

> Người bình thường chỉ giữ được 7±2 items trong bộ nhớ ngắn hạn.

### Áp Dụng
- ✅ Chunk thông tin thành nhóm 3-5 items
- ✅ Dùng visual hierarchy để phân nhóm
- ✅ Số điện thoại: 0912-345-678 (không phải 0912345678)

---

## 5. Hiệu Ứng Von Restorff (Isolation Effect)

> Trong một nhóm tương tự, item khác biệt sẽ được nhớ nhất.

### Áp Dụng
- ✅ CTA khác màu với các nút khác
- ✅ Highlight gói "Phổ biến nhất"
- ✅ Badge "Mới" hoặc "Hot"

### Ví Dụ
```css
/* Nút thường */
.btn-secondary { background: #gray; }

/* Nút nổi bật */
.btn-primary { background: #blue; box-shadow: ...; }
```

---

## 6. Nguyên Tắc Gestalt

### 6.1 Proximity (Gần gũi)
Items gần nhau được coi là cùng nhóm.

```
❌ [Label]                    [Input]
✅ [Label]
   [Input]
```

### 6.2 Similarity (Tương đồng)
Items giống nhau được coi là liên quan.

### 6.3 Closure (Khép kín)
Não tự động hoàn thiện hình dạng chưa đầy đủ.

### 6.4 Continuity (Liên tục)
Mắt theo đường dẫn mượt nhất.

---

## 7. Hiệu Ứng Zeigarnik

> Người ta nhớ các tác vụ chưa hoàn thành hơn đã hoàn thành.

### Áp Dụng
- ✅ Progress bar cho multi-step forms
- ✅ "Hoàn thành hồ sơ 70%" 
- ✅ Saved drafts

---

## 8. Peak-End Rule

> Người ta đánh giá trải nghiệm dựa trên điểm cao trào và kết thúc, không phải trung bình.

### Áp Dụng
- ✅ Kết thúc đẹp: "Chúc mừng! Đơn hàng đã được đặt"
- ✅ Surprise & delight moments
- ✅ Thank you page với animation

---

## 9. Cognitive Load

> Giảm gánh nặng nhận thức để người dùng tập trung vào mục tiêu.

### 3 Loại Cognitive Load

| Loại | Mô tả | Cách giảm |
|------|-------|-----------|
| **Intrinsic** | Độ phức tạp bản chất | Chia nhỏ tác vụ |
| **Extraneous** | Do thiết kế tệ | Cải thiện UI |
| **Germane** | Xử lý có ích | Giữ nguyên |

### Áp Dụng
- ✅ Loại bỏ elements không cần thiết
- ✅ Sử dụng patterns quen thuộc
- ✅ Progressive disclosure

---

## 10. Định Luật Tesler (Conservation of Complexity)

> Mọi hệ thống có độ phức tạp không thể giảm. Câu hỏi là ai chịu: user hay system?

### Áp Dụng
- ✅ System xử lý thay user (auto-detect location)
- ✅ Smart defaults
- ✅ Validation realtime thay vì sau submit

---

## Checklist UX Review

```markdown
□ Vùng chạm ≥ 44px? (Fitts)
□ Lựa chọn ≤ 7 items? (Hick + Miller)
□ Theo patterns quen thuộc? (Jakob)
□ CTA nổi bật? (Von Restorff)
□ Nhóm liên quan gần nhau? (Gestalt)
□ Có progress indicator? (Zeigarnik)
□ Kết thúc ấn tượng? (Peak-End)
□ Không clutter? (Cognitive Load)
□ System xử lý thay user? (Tesler)
```

---

## Tham Khảo

- [Laws of UX](https://lawsofux.com/)
- [Nielsen Norman Group](https://www.nngroup.com/)
- [Baymard Institute](https://baymard.com/)

---

*Cập nhật: Tháng 1, 2026*

