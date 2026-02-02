# User Flow: Đăng Nhập Google

> Chi tiết các flow của feature

---

## 1. Entry Points

| Entry Point | Context | % Traffic |
|-------------|---------|-----------|
| Màn hình Login | User mở app lần đầu | 60% |
| Deeplink | Từ email marketing | 25% |
| Sau logout | User logout rồi login lại | 15% |

---

## 2. Main Flow (Happy Path)

```
┌─────────────────────┐
│  Màn hình Login     │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ Tap "Tiếp tục với   │
│ Google"             │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ Google Popup mở     │
│ (chọn account)      │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ Kiểm tra email      │
│ trong hệ thống      │
└──────────┬──────────┘
           │
    ┌──────┴──────┐
    ▼             ▼
┌────────┐  ┌────────────┐
│Email   │  │Email đã có │
│mới     │  │            │
└───┬────┘  └─────┬──────┘
    │             │
    ▼             ▼
┌────────┐  ┌────────────┐
│Tạo     │  │Đăng nhập   │
│account │  │vào account │
└───┬────┘  └─────┬──────┘
    │             │
    └──────┬──────┘
           ▼
┌─────────────────────┐
│ ✅ Redirect Home    │
└─────────────────────┘
```

---

## 3. Alternative Flow: Email đã có nhưng chưa link Google

```
[Kiểm tra email]
    │
    ▼
[Email đã có, chưa link Google]
    │
    ▼
┌─────────────────────────────┐
│ Dialog: "Email này đã được  │
│ đăng ký. Liên kết Google?"  │
│                             │
│ [Liên kết]    [Hủy]         │
└──────────────┬──────────────┘
               │
       ┌───────┴───────┐
       ▼               ▼
   [Liên kết]      [Hủy]
       │               │
       ▼               ▼
   [Link Google]   [Quay lại
   [Đăng nhập]     màn login]
```

---

## 4. Error Flows

### Error: Mất mạng

```
[Tap Google] → [Không có mạng] → [Toast: "Kiểm tra kết nối mạng"] → [Retry]
```

### Error: Google API lỗi

```
[Popup mở] → [Google timeout] → [Toast: "Không thể kết nối Google"] → [Retry hoặc dùng email]
```

### Error: User cancel

```
[Popup mở] → [User đóng popup] → [Quay lại màn login, không báo gì]
```

---

## 5. UI States

### Loading States

| Khi nào | UI Element | Duration |
|---------|------------|----------|
| Sau tap Google | Button disabled + spinner | Đến khi popup mở |
| Sau chọn account | Full screen loading | Đến khi redirect |

### Success States

| Khi nào | UI Element | Duration |
|---------|------------|----------|
| Login thành công | Redirect về Home | Instant |

### Error States

| Khi nào | UI Element | Behavior |
|---------|------------|----------|
| Network error | Toast ở bottom | Auto-dismiss 5s |
| Google error | Toast ở bottom | Auto-dismiss 5s |
| Email conflict | Dialog modal | User phải chọn |

---

## 6. Edge Cases

| Case | Điều kiện | Xử lý |
|------|-----------|-------|
| Popup bị block | Browser block popup | Fallback redirect, hiện hướng dẫn |
| Chọn email khác | Email không match account hiện tại | Báo lỗi, cho chọn lại |
| Session expire | Token hết hạn giữa chừng | Auto refresh hoặc yêu cầu login lại |

---

## Xem diagram

→ Mở [user-flow.html](user-flow.html) để xem visualization

---

*Flow documented by: Product Team | Date: 18/01/2026*
