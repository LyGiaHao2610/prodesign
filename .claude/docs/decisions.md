# Decision Log

> **Mục đích**: Lưu lại các quyết định quan trọng về sản phẩm. AI sẽ đọc file này để hiểu context và không đề xuất ngược lại những gì đã quyết định.

---

## Cách sử dụng

Mỗi khi đưa ra quyết định quan trọng, thêm entry mới theo format:

```markdown
## [YYYY-MM-DD] Tiêu đề quyết định

**Bối cảnh:** Tại sao cần quyết định này?

**Các options:**
1. Option A - Ưu/nhược
2. Option B - Ưu/nhược

**Quyết định:** Chọn option nào

**Lý do:** Tại sao chọn option đó

**Hệ quả:** Những gì sẽ thay đổi
```

---

## Decisions

### [YYYY-MM-DD] Example: Chọn authentication method

**Bối cảnh:** Cần quyết định phương thức đăng nhập cho app

**Các options:**
1. Email/Password only - Đơn giản nhưng friction cao
2. Social login (Google, Apple) - Nhanh nhưng phụ thuộc 3rd party
3. Passwordless (magic link) - Modern nhưng cần email

**Quyết định:** Social login (Google) + Email/Password fallback

**Lý do:**
- 78% target users prefer social login (theo survey)
- Vẫn giữ email cho users không có Google
- Không làm Apple vì chưa có iOS app

**Hệ quả:**
- Cần implement Google OAuth
- Cần handle email conflict case
- Apple login sẽ làm khi có iOS app

---

### [YYYY-MM-DD] Example: Chọn design system

**Bối cảnh:** Cần thống nhất design system cho toàn app

**Quyết định:**
- Primary color: #3B82F6 (Blue 500)
- Font: Inter
- Border radius: 12px (rounded-xl)
- Spacing: 4px base unit

**Lý do:** Phù hợp với persona trẻ, modern, professional

---

<!-- Thêm decisions mới ở đây -->
