# Brainstorm: Đăng Nhập Google

> Phiên brainstorm ngày 15/01/2026

---

## 1. Nguồn gốc Ý tưởng

**Ý tưởng đến từ đâu?**
- [x] Feedback từ user
- [ ] Data/Analytics
- [ ] Nghiên cứu đối thủ
- [ ] Internal team
- [ ] Khác

**Chi tiết:**
Nhiều user phản hồi qua support chat rằng việc nhập email và tạo password mới quá phiền phức. Đặc biệt user iOS đã quen với "Sign in with Apple" nên mong muốn có trải nghiệm tương tự.

---

## 2. Vấn đề (Pain Points)

**User đang gặp khó khăn gì?**

1. **Nhập email dài trên mobile** - Bàn phím nhỏ, dễ gõ sai
2. **Phải nghĩ password mới** - Nhiều app, nhiều password, khó nhớ
3. **Quên password** - Phải reset, mất thời gian
4. **Verify email** - Phải mở app email, copy code

**Tần suất gặp vấn đề:**
- [x] Hàng ngày
- [ ] Hàng tuần
- [ ] Thỉnh thoảng
- [ ] Hiếm khi

**User đang workaround bằng cách nào?**

- Dùng password manager (nhưng nhiều user không có)
- Ghi password ra giấy/notes (không an toàn)
- Dùng cùng 1 password cho mọi app (rủi ro bảo mật)
- Bỏ cuộc không đăng ký (mất user!)

---

## 3. Kỳ vọng

**Sau khi có feature này, user sẽ:**

- Đăng ký/đăng nhập trong < 10 giây
- Không cần nhớ thêm password mới
- Cảm thấy app "modern" và tiện lợi như các app lớn
- Tin tưởng hơn vì dùng xác thực của Google

**Cảm xúc mong muốn:**
- [x] Tiết kiệm thời gian
- [x] Bớt frustration
- [ ] Tự tin hơn
- [ ] Khác

---

## 4. Scope & Giới hạn

**Nên làm:**
- Đăng nhập bằng Google OAuth
- Tự động tạo account nếu email mới
- Link với account cũ nếu email đã tồn tại
- Hiển thị avatar từ Google

**KHÔNG nên làm (out of scope):**
- Sign in with Apple (phase sau)
- Sign in with Facebook (không phù hợp persona)
- Cho phép link nhiều Google account
- Đổi email sau khi đăng ký

---

## 5. Câu hỏi Mở

1. Nếu email Google đã dùng để đăng ký bằng email/password, có auto-link không hay hỏi user?
2. Có cần verify số điện thoại sau khi đăng nhập Google không?
3. Avatar lấy từ Google có cho phép user đổi không?

---

## 6. Ý tưởng Thô

- Nút "Đăng nhập với Google" đặt nổi bật hơn email/password
- Thêm "Đăng nhập nhanh" section riêng
- First-time user có thể bỏ qua onboarding nếu đã có data từ Google

---

*Brainstorm by: Product Team*
