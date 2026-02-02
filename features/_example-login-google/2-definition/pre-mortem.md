# Pre-mortem: Đăng Nhập Google

> "Tưởng tượng feature đã launch và THẤT BẠI. Tại sao?"

---

## 1. Rủi ro về User Experience

| Rủi ro | Khả năng | Ảnh hưởng | Cách phòng tránh |
|--------|----------|-----------|------------------|
| User không thấy nút Google | Thấp | Cao | Đặt nổi bật, trên form email |
| User không hiểu "Tiếp tục với" nghĩa gì | Thấp | Trung bình | A/B test copy |
| Popup bị block | Trung bình | Cao | Fallback redirect, hướng dẫn tắt popup blocker |
| User chọn nhầm Google account | Trung bình | Trung bình | Hiện email rõ trước khi confirm |

---

## 2. Rủi ro về Technical

| Rủi ro | Khả năng | Ảnh hưởng | Cách phòng tránh |
|--------|----------|-----------|------------------|
| Google API downtime | Thấp | Cao | Hiện thông báo, giữ email login |
| Token expire | Trung bình | Trung bình | Auto refresh token |
| Database migration fail | Thấp | Cao | Test kỹ staging, rollback plan |

---

## 3. Rủi ro về Business

| Rủi ro | Khả năng | Ảnh hưởng | Cách phòng tránh |
|--------|----------|-----------|------------------|
| User vẫn prefer email | Trung bình | Thấp | Giữ cả 2 options |
| Privacy concerns | Thấp | Trung bình | Explain rõ chỉ lấy email/name |
| Google thay đổi API | Thấp | Cao | Follow Google developer updates |

---

## 4. Worst Case Scenario

### Scenario: User bị lock out

**Điều gì xảy ra:**
User đăng ký bằng Google → Google account bị disable → Không login được

**Ảnh hưởng:**
Mất access vào account, data

**Cách recover:**
Cho phép reset về email/password qua support

---

## 5. Kill Criteria

**Dừng/rollback feature nếu:**
- [ ] Error rate > 5%
- [ ] Conversion rate giảm so với baseline
- [ ] > 10 support tickets/ngày về Google login

---

## 6. Top 3 Rủi ro

1. **Popup bị block** - Test kỹ các browser, có fallback
2. **Email conflict confusion** - UX clear cho dialog link account
3. **Google API issues** - Monitoring, graceful degradation

---

*Pre-mortem by: Product Team | Date: 17/01/2026*
