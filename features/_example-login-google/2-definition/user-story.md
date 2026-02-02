# User Stories: Đăng Nhập Google

> Version 1.0 | Cập nhật: 17/01/2026

---

## Stories Overview

| ID | Story | Priority | Status |
|----|-------|----------|--------|
| US-01 | Đăng ký mới bằng Google | P0 | Ready |
| US-02 | Đăng nhập bằng Google | P0 | Ready |
| US-03 | Link Google với account có sẵn | P1 | Ready |
| US-04 | Xử lý lỗi và edge cases | P1 | Ready |

---

## US-01: Đăng ký mới bằng Google

### User Story

**As a** khách mới chưa có tài khoản
**I want** đăng ký bằng Google account
**So that** tôi không cần nghĩ password mới

### Acceptance Criteria

```gherkin
GIVEN tôi ở màn hình đăng nhập
  AND email Google của tôi chưa có trong hệ thống
WHEN tôi tap "Tiếp tục với Google"
  AND chọn Google account
THEN hệ thống tạo account mới với email đó
  AND tôi được redirect về trang chủ
  AND tôi thấy avatar từ Google
```

**Checklist:**
- [ ] Nút "Tiếp tục với Google" hiển thị trên màn login
- [ ] Popup Google OAuth mở đúng
- [ ] Account được tạo với email, name, avatar từ Google
- [ ] User được login tự động sau khi tạo account
- [ ] Redirect về home sau khi thành công

### UI/UX Notes

- Nút Google đặt trên form email/password
- Dùng logo Google chuẩn theo branding guidelines
- Loading spinner khi đang xử lý

### Edge Cases

| Case | Expected Behavior |
|------|-------------------|
| User cancel popup | Quay lại màn login, không báo lỗi |
| Google API timeout | Hiện toast "Không thể kết nối Google, thử lại sau" |

---

## US-02: Đăng nhập bằng Google

### User Story

**As a** user đã có tài khoản (đăng ký qua Google trước đó)
**I want** đăng nhập lại bằng Google
**So that** tôi không cần nhớ password

### Acceptance Criteria

```gherkin
GIVEN tôi ở màn hình đăng nhập
  AND email Google của tôi đã link với account
WHEN tôi tap "Tiếp tục với Google"
  AND chọn đúng Google account
THEN tôi được đăng nhập vào account đó
  AND redirect về trang chủ
```

**Checklist:**
- [ ] Nhận diện email đã có trong hệ thống
- [ ] Đăng nhập thành công nếu Google ID match
- [ ] Redirect về home
- [ ] Session được tạo đúng

### Edge Cases

| Case | Expected Behavior |
|------|-------------------|
| Chọn email khác với account đã link | Báo lỗi "Email này đã được sử dụng cho account khác" |

---

## US-03: Link Google với account có sẵn

### User Story

**As a** user đã có tài khoản (đăng ký bằng email/password)
**I want** link Google vào account
**So that** lần sau tôi có thể đăng nhập bằng Google

### Acceptance Criteria

```gherkin
GIVEN tôi ở màn hình đăng nhập
  AND email Google của tôi đã có account (đăng ký bằng email)
  AND account đó chưa link Google
WHEN tôi tap "Tiếp tục với Google"
THEN hiện dialog hỏi "Email này đã được đăng ký. Bạn muốn liên kết với Google?"
  AND nếu tôi chọn "Liên kết"
  THEN Google được link vào account
  AND tôi được đăng nhập
```

**Checklist:**
- [ ] Dialog hiện đúng message
- [ ] Nút "Liên kết" và "Hủy" rõ ràng
- [ ] Link thành công cập nhật database
- [ ] User có thể login bằng cả 2 cách sau đó

### UI/UX Notes

- Dialog modal, không phải alert
- Primary action: "Liên kết"
- Secondary action: "Hủy"

---

## US-04: Xử lý lỗi và edge cases

### User Story

**As a** user
**I want** được thông báo rõ ràng khi có lỗi
**So that** tôi biết phải làm gì tiếp

### Error Scenarios

#### ES-01: Mất mạng

**Trigger:** User tap Google login khi offline

**Expected behavior:**
- UI: Toast ở bottom
- Message: "Kiểm tra kết nối mạng và thử lại"
- Recovery: Tự động retry khi có mạng, hoặc user tap lại

#### ES-02: Google API lỗi

**Trigger:** Google server không phản hồi

**Expected behavior:**
- UI: Toast ở bottom
- Message: "Không thể kết nối Google. Vui lòng thử lại sau."
- Recovery: Nút retry, hoặc dùng email/password

#### ES-03: User cancel

**Trigger:** User đóng popup Google mà không chọn account

**Expected behavior:**
- UI: Không hiện gì
- Behavior: Quay lại màn login như bình thường

---

## Definition of Done

- [ ] Tất cả acceptance criteria passed
- [ ] Edge cases handled
- [ ] Error states implemented
- [ ] Responsive trên mobile/desktop
- [ ] Analytics events tracked
- [ ] QA tested trên iOS và Android

---

*Author: Product Team*
