# Research: Đăng Nhập Google

> Nghiên cứu ngày 16/01/2026

---

## 1. Phân tích Đối thủ

### Spotify

**Cách họ làm:**
- Nút Google ngang hàng với Apple, Facebook
- Màu trắng, viền xám, logo Google màu
- Đặt trên form email/password

**Điểm mạnh:**
- Clean, không overwhelm user
- Consistent với Google branding guidelines

**Điểm yếu:**
- Nút hơi nhỏ trên mobile
- Không highlight nút nào là recommended

---

### Notion

**Cách họ làm:**
- Chỉ có Google và Apple, không có form email
- Nút rất to, full-width
- "Continue with Google" thay vì "Sign in"

**Điểm mạnh:**
- Cực kỳ simple, chỉ 2 options
- Copy "Continue with" thân thiện hơn

**Điểm yếu:**
- Không có option email cho user muốn control

---

## 2. Best Practices

**Trong ngành thường làm thế nào?**

1. **Vị trí**: Social login đặt TRÊN form email/password
2. **Copy**: "Continue with Google" > "Sign in with Google" > "Login with Google"
3. **Design**: Theo Google Branding Guidelines (logo chuẩn, không đổi màu)
4. **Flow**: 1 tap → popup → redirect về app

**UX Patterns phổ biến:**

- **Divider**: "or" hoặc "hoặc" giữa social và email
- **Loading state**: Disable button + spinner khi đang xử lý
- **Error toast**: Không dùng alert, dùng toast ở bottom

---

## 3. User Research

### Quotes từ User

> "Mỗi lần đăng ký app mới là tôi lại phải nghĩ password, rồi lại quên"
> — User A, 28 tuổi, iOS

> "Tôi thích app nào cho đăng nhập bằng Google, nhanh gọn"
> — User B, 24 tuổi, Android

### Insights

- 78% user prefer social login over email/password (theo khảo sát 50 users)
- User iOS đã quen với "Sign in with Apple", expect tương tự cho Google
- User lo ngại privacy nhưng trust Google hơn Facebook

---

## 4. Market Data

**Số liệu liên quan:**

- 65% người dùng mobile bỏ cuộc khi phải tạo account mới (Baymard Institute)
- Social login tăng conversion rate 20-40% (LoginRadius)
- Google là social login phổ biến nhất (59% market share)

**Trends:**

- Passwordless đang là xu hướng (passkeys, biometrics)
- "Sign in with Google" One Tap đang được Google push mạnh

---

## 5. References & Inspiration

| Nguồn | Link | Ghi chú |
|-------|------|---------|
| Google Identity Guidelines | [Link](https://developers.google.com/identity/branding-guidelines) | Bắt buộc follow |
| Spotify Login | Screenshot | Clean design |
| Notion Login | Screenshot | Minimalist |

**Files trong _references/:**
- spotify-login.png
- notion-login.png
- google-button-guidelines.pdf

---

## 6. Key Takeaways

1. **Đặt Google login nổi bật** - Trên form email, kích thước lớn
2. **Copy "Continue with Google"** - Thân thiện, ít commitment hơn "Sign in"
3. **Follow Google guidelines** - Logo chuẩn, không custom màu
4. **Handle edge cases** - Email đã tồn tại, mất mạng, user cancel

---

## 7. Recommendations

Dựa trên research, đề xuất:

1. **Design**: Nút full-width, đặt trên form email, dùng logo Google chuẩn
2. **Copy**: "Tiếp tục với Google" (Vietnamese) / "Continue with Google" (English)
3. **Flow**: Google popup → Check email → Auto link hoặc tạo mới → Redirect home
4. **Edge case**: Nếu email đã có, hỏi user có muốn link account không

---

*Research by: Product Team*
