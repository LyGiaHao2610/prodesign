# Feature Overview: Đăng Nhập Google

> Version 1.0 | Cập nhật: 17/01/2026

---

## TL;DR

Cho phép user đăng nhập/đăng ký bằng tài khoản Google thay vì phải nhập email và tạo password mới. Giảm friction, tăng conversion rate đăng ký.

---

## 1. Why - Tại sao làm?

### Bối cảnh

App hiện tại chỉ có đăng ký bằng email/password. Nhiều user phản hồi qua support rằng quá trình này phiền phức, đặc biệt trên mobile.

### Vấn đề

- **65% user bỏ cuộc** khi phải tạo account mới (industry benchmark)
- **30% support tickets** liên quan đến quên password
- **Conversion rate đăng ký** chỉ đạt 15% (thấp hơn benchmark 25%)

### Cơ hội

- Social login có thể tăng conversion 20-40%
- Google là platform phổ biến nhất trong user base của chúng ta
- Competitor đã có feature này, chúng ta đang thua

---

## 2. What - Làm gì?

### Mô tả Feature

Thêm nút "Tiếp tục với Google" vào màn hình đăng nhập/đăng ký. User tap 1 lần → chọn Google account → tự động tạo hoặc đăng nhập.

### Capabilities (Có thể làm)

- Đăng ký tài khoản mới bằng Google
- Đăng nhập vào tài khoản đã có (nếu email match)
- Link Google với tài khoản email/password đã có
- Lấy avatar và tên từ Google profile

### Non-goals (Không làm)

- Sign in with Apple (phase 2)
- Sign in with Facebook (không phù hợp persona)
- Cho phép đổi email sau khi đăng ký
- Cho phép link nhiều Google account

---

## 3. Who - Cho ai?

### Primary Persona

**Người đi làm 25-35 tuổi**
- Đặc điểm: Bận rộn, dùng nhiều app, ngại tạo account mới
- Nhu cầu: Đăng nhập nhanh, không phải nhớ password
- Pain point: Quên password, mất thời gian reset

### Secondary Persona

**Gen Z 18-24 tuổi**
- Đã quen với social login từ các app khác
- Expect mọi app đều có Google/Apple login

---

## 4. Goals - Mục tiêu

### Business Goals

- Tăng conversion rate đăng ký từ 15% → 25%
- Giảm 50% support tickets liên quan password

### User Goals

- Đăng ký/đăng nhập trong < 10 giây
- Không cần nhớ thêm password

---

## 5. Success Criteria

**Feature được coi là thành công khi:**

| Metric | Target | Cách đo |
|--------|--------|---------|
| Signup conversion | +10% | Analytics funnel |
| Time to signup | < 15s | Event tracking |
| Password reset tickets | -50% | Zendesk |
| Google login adoption | > 40% | % user chọn Google |

---

## 6. Scope

### MVP (Phase 1)

- [x] Nút "Tiếp tục với Google" trên màn login
- [x] Tạo account mới nếu email chưa có
- [x] Đăng nhập nếu email đã có và đã link Google
- [x] Dialog hỏi link account nếu email đã có nhưng chưa link

### Phase 2 (Future)

- [ ] Sign in with Apple
- [ ] Google One Tap (auto prompt)
- [ ] Remember last login method

---

## 7. Dependencies & Constraints

### Dependencies

- Google OAuth API setup
- Backend endpoint xử lý Google token
- Database migration thêm field `google_id`

### Constraints

- Phải follow Google Branding Guidelines
- Không được lưu Google password (chỉ lưu ID)

### Assumptions

- User đã có Google account
- Device có thể mở Google popup/redirect

---

## 8. Risks

| Risk | Impact | Mitigation |
|------|--------|------------|
| Google API downtime | High | Fallback về email login, hiện thông báo |
| User không có Google | Medium | Vẫn giữ option email/password |
| Email conflict | Medium | Dialog cho user chọn link hoặc cancel |

---

## 9. Timeline (Rough)

- **Size estimate:** M (Medium)
- **Target release:** Sprint 5

---

## Links

- [Brainstorm](../1-discovery/brainstorm.md)
- [Research](../1-discovery/research.md)
- [User Stories](user-story.md)
- [User Flow](../3-design/user-flow.html)
- [Mockup](../3-design/mockup.html)

---

*Author: Product Team | Reviewer: Tech Lead*
