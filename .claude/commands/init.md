---
mo-ta: Khởi tạo context cho project - AI tự động phân tích và điền thông tin
---

# Lệnh /init

Phân tích project và tự động điền thông tin vào các file docs.

## Khi nào Dùng

- Khi mới copy boilerplate vào project
- Khi muốn AI hiểu về project để hỗ trợ tốt hơn

## Quy trình

Khi người dùng gọi `/init`, thực hiện theo thứ tự sau:

### Bước 1: Scan Project

```
Đọc và phân tích:
├── package.json          → Tech stack, dependencies
├── tailwind.config.*     → Design tokens (colors, fonts, spacing)
├── src/                  → Cấu trúc code, components có sẵn
├── README.md             → Mô tả sản phẩm (nếu có)
├── .env.example          → Các services đang dùng
└── Các config files      → ESLint, Prettier, tsconfig...
```

### Bước 2: Điền `.claude/docs/cong-nghe.md`

Tự động điền dựa trên package.json:
- Framework (React, Vue, Next.js...)
- Language (TypeScript, JavaScript)
- Styling (Tailwind, CSS Modules, Styled-components)
- State management
- Form libraries
- UI libraries
- Testing tools
- Build tools

### Bước 3: Điền `.claude/docs/he-thong-thiet-ke.md`

Tự động điền từ tailwind.config:
- Colors (primary, secondary, semantic colors)
- Typography (font families, sizes)
- Spacing scale
- Border radius
- Shadows
- Breakpoints

Nếu không có tailwind, scan CSS variables hoặc theme files.

### Bước 4: Hỏi về Sản phẩm

Đặt câu hỏi để điền `.claude/docs/boi-canh-san-pham.md`:

```
Tôi đã phân tích xong cấu trúc project. Để hiểu rõ hơn về sản phẩm, 
cho tôi biết:

1. 📦 Sản phẩm này tên gì và làm gì?
   (Ví dụ: "App quản lý tài chính cá nhân")

2. 👥 Ai là người dùng chính?
   (Ví dụ: "Người đi làm 25-35 tuổi")

3. 🎯 Vấn đề chính bạn đang giải quyết là gì?
   (Ví dụ: "Người dùng khó theo dõi chi tiêu")

4. 🏆 Đối thủ cạnh tranh là ai?
   (Ví dụ: "Money Lover, Misa")

5. 📈 Sản phẩm đang ở giai đoạn nào?
   □ Ý tưởng
   □ MVP
   □ Đang grow
   □ Scale
```

### Bước 5: Tổng hợp và Xác nhận

Sau khi có đủ thông tin:

```markdown
## ✅ Khởi tạo Hoàn tất!

Tôi đã cập nhật các file sau:

### `.claude/docs/cong-nghe.md`
- Framework: React 18 + TypeScript
- Styling: Tailwind CSS
- State: Zustand
- [...]

### `.claude/docs/he-thong-thiet-ke.md`
- Primary color: #3B82F6
- Font: Inter
- [...]

### `.claude/docs/boi-canh-san-pham.md`
- Sản phẩm: [Tên]
- Người dùng: [Persona]
- [...]

---

Bây giờ bạn có thể hỏi tôi:
- "Thiết kế tính năng X"
- "Viết PRD cho Y"
- "Đề xuất cách tăng user"
- "Review design cho màn hình Z"

Tôi sẽ trả lời dựa trên context của sản phẩm này.
```

## Output Format

Khi điền docs, sử dụng format có sẵn trong template nhưng thay thế placeholders bằng thông tin thực.

## Ví dụ

```
Người dùng: /init

Claude: Đang phân tích project...

📦 Đã tìm thấy:
- package.json: React 18, TypeScript, Tailwind CSS, Zustand
- tailwind.config.ts: Custom colors, Inter font
- src/: 15 components, 5 hooks

📝 Đã tự động điền:
- ✅ .claude/docs/cong-nghe.md
- ✅ .claude/docs/he-thong-thiet-ke.md

❓ Để điền thông tin sản phẩm, cho tôi biết:
[Các câu hỏi...]
```

## Lưu ý

- Không ghi đè nếu file đã có nội dung (hỏi trước)
- Luôn xác nhận với người dùng trước khi lưu
- Nếu thiếu thông tin, dùng placeholders và ghi chú cần bổ sung

