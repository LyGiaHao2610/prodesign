# Feature: Đăng Nhập Google

> **File này tổng hợp tất cả context để implement.**
> Dev/AI đọc file này là đủ hiểu feature.

---

## 1. Tóm tắt

| Item | Detail |
|------|--------|
| **Mục tiêu** | Cho user đăng nhập/đăng ký bằng Google OAuth |
| **User** | Người đi làm 25-35 tuổi, ngại tạo account mới |
| **Thành công khi** | Signup conversion +10%, Google adoption > 40% |

---

## 2. User Stories

### Story 1: Đăng ký mới bằng Google

**As a** khách mới chưa có tài khoản
**I want** đăng ký bằng Google account
**So that** tôi không cần nghĩ password mới

**Acceptance Criteria:**
- [ ] Nút "Tiếp tục với Google" hiển thị trên màn login
- [ ] Popup Google OAuth mở khi tap
- [ ] Account được tạo với email, name, avatar từ Google
- [ ] User được login tự động sau khi tạo account
- [ ] Redirect về home sau khi thành công

---

### Story 2: Đăng nhập bằng Google

**As a** user đã có tài khoản
**I want** đăng nhập lại bằng Google
**So that** tôi không cần nhớ password

**Acceptance Criteria:**
- [ ] Nhận diện email đã có trong hệ thống
- [ ] Đăng nhập thành công nếu Google ID match
- [ ] Redirect về home

---

### Story 3: Link Google với account có sẵn

**As a** user đã có tài khoản email/password
**I want** link Google vào account
**So that** lần sau có thể đăng nhập bằng Google

**Acceptance Criteria:**
- [ ] Hiện dialog hỏi có muốn link không
- [ ] Link thành công cập nhật database
- [ ] User có thể login bằng cả 2 cách sau đó

---

## 3. User Flow

```
[Màn hình Login]
    │
    ▼
[Tap "Tiếp tục với Google"]
    │
    ▼
[Google Popup] → [User cancel] → [Quay lại Login]
    │
    ▼
[Chọn account]
    │
    ├── Email mới → [Tạo account] → [Home]
    │
    ├── Email đã link → [Đăng nhập] → [Home]
    │
    └── Email có, chưa link → [Dialog link?]
                                   │
                            ├── [Link] → [Đăng nhập] → [Home]
                            └── [Hủy] → [Login]
```

**Xem flow chi tiết:** [user-flow.html](3-design/user-flow.html)

---

## 4. UI States

| State | Hiển thị | Trigger |
|-------|----------|---------|
| **Default** | Nút "Tiếp tục với Google" enabled | Initial load |
| **Loading** | Button disabled + spinner | Tap nút Google |
| **Success** | Redirect về Home | Login thành công |
| **Error** | Toast ở bottom, auto-dismiss 5s | Có lỗi |
| **Link Dialog** | Modal dialog với 2 nút | Email đã có, chưa link |

---

## 5. Edge Cases & Error Handling

| Case | Điều kiện | Xử lý |
|------|-----------|-------|
| User cancel popup | Đóng popup không chọn | Quay lại login, không báo gì |
| Mất mạng | Không có internet | Toast "Kiểm tra kết nối mạng" |
| Google timeout | API không phản hồi | Toast "Không thể kết nối Google" |
| Popup bị block | Browser chặn popup | Fallback redirect + hướng dẫn |
| Email conflict | Email đã dùng method khác | Dialog hỏi link account |

### Error Messages

| Error Code | Message hiển thị | Action |
|------------|------------------|--------|
| `NETWORK_ERROR` | "Kiểm tra kết nối mạng và thử lại" | Retry button |
| `GOOGLE_TIMEOUT` | "Không thể kết nối Google. Thử lại sau." | Retry |
| `POPUP_BLOCKED` | "Popup bị chặn. Kiểm tra cài đặt browser." | Hướng dẫn |
| `EMAIL_EXISTS` | Dialog link account | Chọn Link hoặc Hủy |

---

## 6. Out of Scope

Những thứ **KHÔNG** làm trong version này:

- ❌ Sign in with Apple
- ❌ Sign in with Facebook
- ❌ Google One Tap (auto prompt)
- ❌ Cho phép đổi email sau đăng ký
- ❌ Link nhiều Google account

---

## 7. Data Requirements

### Input từ Google
| Field | Type | Required |
|-------|------|----------|
| `email` | string | Yes |
| `name` | string | Yes |
| `avatar_url` | string | No |
| `google_id` | string | Yes |

### Database changes
- Thêm field `google_id` vào table `users`
- Thêm field `avatar_url` vào table `users`

---

## 8. Analytics Events

| Event | Trigger | Properties |
|-------|---------|------------|
| `login_screen_view` | Mở màn login | `source` |
| `google_login_tap` | Tap nút Google | - |
| `google_login_success` | Login thành công | `is_new_user`, `linked` |
| `google_login_error` | Có lỗi | `error_type` |
| `link_dialog_show` | Hiện dialog | - |
| `link_dialog_confirm` | Chọn link | - |
| `link_dialog_cancel` | Chọn hủy | - |

---

## 9. References

| Document | Purpose |
|----------|---------|
| [overview.md](2-definition/overview.md) | Full context về feature |
| [user-story.md](2-definition/user-story.md) | Chi tiết user stories |
| [user-flow.html](3-design/user-flow.html) | Flow diagram |
| [wireframe.html](3-design/wireframe.html) | Lo-fi prototype |
| [mockup.html](3-design/mockup.html) | Hi-fi prototype |
| [pre-mortem.md](2-definition/pre-mortem.md) | Risks & mitigations |

---

## 10. Questions / Clarifications

Nếu có thắc mắc, liên hệ:

- **Product:** product@example.com
- **Design:** design@example.com

---

*Last updated: 18/01/2026 by Product Team*
