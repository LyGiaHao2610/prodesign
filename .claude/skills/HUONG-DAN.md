# Kiến thức Chuyên môn

Thư mục này chứa kiến thức chuyên môn mà Claude có thể tham khảo khi thực hiện các tác vụ.

## 📁 Cấu trúc Hiện có

```
skills/
├── HUONG-DAN.md                      # File này
├── quan-ly-san-pham/
│   └── khung-uu-tien.md              # RICE, MoSCoW, ICE, Kano
├── thiet-ke/
│   └── nguyen-tac-ux.md              # 10 nguyên tắc UX cốt lõi
└── lap-trinh/
    └── mau-react.md                  # React patterns & best practices
```

## 🎯 Mục đích

Mỗi skill file cung cấp:
- **Kiến thức nền tảng** - Lý thuyết, framework
- **Hướng dẫn thực hành** - Cách áp dụng
- **Ví dụ cụ thể** - Minh họa thực tế
- **Checklist** - Để kiểm tra nhanh

## 📖 Danh sách Skills Có Sẵn

### Quản lý Sản phẩm
| File | Nội dung |
|------|----------|
| `khung-uu-tien.md` | RICE, MoSCoW, ICE, Value/Effort Matrix, Kano Model |

### Thiết kế
| File | Nội dung |
|------|----------|
| `nguyen-tac-ux.md` | Fitts' Law, Hick's Law, Jakob's Law, Gestalt, Cognitive Load... |

### Lập trình
| File | Nội dung |
|------|----------|
| `mau-react.md` | Compound Components, Render Props, HOC, Hooks patterns, Error handling... |

---

## ➕ Thêm Skill Mới

### Bước 1: Chọn danh mục

```
skills/
├── quan-ly-san-pham/    # PM skills
├── thiet-ke/            # Design skills
├── lap-trinh/           # Development skills
├── nghien-cuu/          # Research skills
└── [danh-muc-moi]/      # Tạo mới nếu cần
```

### Bước 2: Tạo file theo template

```markdown
# [Tên Kiến thức]

## Tổng quan
[1-2 câu mô tả kiến thức này là gì]

## Khi nào Dùng
- [Tình huống 1]
- [Tình huống 2]

## Khái niệm Chính

### [Khái niệm 1]
[Giải thích]

### [Khái niệm 2]
[Giải thích]

## Cách Áp dụng

### Bước 1: [Tên bước]
[Hướng dẫn]

### Bước 2: [Tên bước]
[Hướng dẫn]

## Ví dụ Thực tế

### Ví dụ 1: [Tên]
[Mô tả scenario và cách áp dụng]

## Checklist
- [ ] [Kiểm tra 1]
- [ ] [Kiểm tra 2]

## Lỗi Thường gặp
❌ [Lỗi 1]
✅ [Cách làm đúng]

## Tham khảo
- [Link 1]
- [Link 2]

---
*Cập nhật: [Ngày]*
```

---

## 💡 Gợi ý Skills Nên Thêm

### Quản lý Sản phẩm
- [ ] `metrics-framework.md` - North Star, HEART, AARRR
- [ ] `roadmap-planning.md` - Quarterly planning, Now/Next/Later
- [ ] `stakeholder-management.md` - Communication matrix

### Thiết kế
- [ ] `design-system-guide.md` - Tokens, components, patterns
- [ ] `accessibility-checklist.md` - WCAG compliance
- [ ] `mobile-first-design.md` - Responsive strategies

### Lập trình
- [ ] `testing-patterns.md` - Unit, Integration, E2E
- [ ] `performance-optimization.md` - Core Web Vitals
- [ ] `security-best-practices.md` - OWASP Top 10

### Nghiên cứu
- [ ] `user-interview-guide.md` - Scripts, techniques
- [ ] `survey-design.md` - Question types, bias
- [ ] `data-analysis.md` - Quant + Qual analysis

---

## 🔗 Cách Claude Sử dụng Skills

Khi nhận được yêu cầu, Claude sẽ:

1. **Xác định skill liên quan** từ yêu cầu
2. **Đọc file skill** tương ứng
3. **Áp dụng kiến thức** vào câu trả lời
4. **Tham chiếu** khi đưa ra đề xuất

Ví dụ:
- "Ưu tiên backlog" → đọc `khung-uu-tien.md`
- "Review UI" → đọc `nguyen-tac-ux.md`
- "Viết component" → đọc `mau-react.md`

---

*Cập nhật: Tháng 1, 2026*
