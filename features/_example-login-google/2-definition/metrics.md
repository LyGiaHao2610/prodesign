# Metrics: Đăng Nhập Google

> Làm sao biết feature này thành công?

---

## 1. Primary Metric (North Star)

### Signup Conversion Rate

**Định nghĩa:** % user hoàn thành đăng ký trong số user vào màn login

**Target:** Tăng từ 15% → 25% (+10%)

**Baseline hiện tại:** 15%

**Cách đo:**
```
(Số user đăng ký thành công / Số user view màn login) × 100
```

**Timeframe:** 2 tuần sau launch

---

## 2. Secondary Metrics

### 2.1 Google Login Adoption Rate

| Item | Value |
|------|-------|
| Định nghĩa | % user chọn Google trong số user đăng ký |
| Target | > 40% |
| Cách đo | Event tracking |

### 2.2 Time to Signup

| Item | Value |
|------|-------|
| Định nghĩa | Thời gian từ view màn login đến đăng ký xong |
| Target | < 15 giây (với Google) |
| Cách đo | Timestamp events |

---

## 3. Guardrail Metrics

> Những metrics KHÔNG ĐƯỢC GIẢM sau khi launch

| Metric | Ngưỡng chấp nhận | Hiện tại |
|--------|------------------|----------|
| Login success rate | Không giảm > 1% | 98% |
| App crash rate | Không tăng | 0.1% |
| Overall DAU | Không giảm | 10,000 |

---

## 4. Event Tracking Required

| Event Name | Trigger | Properties |
|------------|---------|------------|
| `login_screen_view` | Mở màn login | `source` |
| `google_login_tap` | Tap nút Google | - |
| `google_popup_open` | Popup mở | - |
| `google_account_select` | Chọn account | `is_new_email` |
| `google_login_success` | Login thành công | `is_new_user`, `linked` |
| `google_login_error` | Có lỗi | `error_type` |
| `link_dialog_show` | Hiện dialog link | - |
| `link_dialog_confirm` | Chọn link | - |
| `link_dialog_cancel` | Chọn hủy | - |

---

## 5. Funnel

```
login_screen_view (100%)
    ↓
google_login_tap (target: 50%)
    ↓
google_popup_open (target: 95%)
    ↓
google_account_select (target: 80%)
    ↓
google_login_success (target: 95%)
```

---

## 6. Success Definition

### Feature THÀNH CÔNG nếu:
- [ ] Signup conversion tăng ≥ 10%
- [ ] Google adoption > 40%
- [ ] Error rate < 2%

### Feature THẤT BẠI nếu:
- [ ] Conversion rate giảm
- [ ] Error rate > 5%
- [ ] Negative user feedback > 20%

---

*Metrics defined by: Product Team | Date: 17/01/2026*
