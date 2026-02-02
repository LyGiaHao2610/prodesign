# Kế hoạch Triển khai

Thư mục này chứa các kế hoạch triển khai cho tính năng và dự án.

## 📁 Cấu trúc Khuyến nghị

```
plans/
├── HUONG-DAN.md                           # File này
├── 2026-Q1-ten-tinh-nang.md              # Kế hoạch theo quý
├── 2026-01-sprint-01.md                  # Kế hoạch sprint
└── [YYYY-MM-ten-tinh-nang].md            # Kế hoạch tính năng
```

## 🎯 Khi nào Tạo Kế hoạch?

| Quy mô | Thời gian | Cần kế hoạch? |
|--------|-----------|---------------|
| Nhỏ | < 1 ngày | ❌ Không cần |
| Vừa | 1-3 ngày | ⚠️ Tùy chọn |
| Lớn | > 3 ngày | ✅ Bắt buộc |
| Epic | > 2 tuần | ✅ Bắt buộc + review |

---

## 📝 Template Kế hoạch Tính năng

```markdown
# [Tên Tính năng] - Kế hoạch Triển khai

## 📋 Tổng quan

| Trường | Giá trị |
|--------|---------|
| **Owner** | [Tên] |
| **Ngày tạo** | [YYYY-MM-DD] |
| **Ngày dự kiến hoàn thành** | [YYYY-MM-DD] |
| **Trạng thái** | 🔘 Planning / 🔵 In Progress / 🟢 Done |
| **PRD liên quan** | [Link] |

---

## 🎯 Mục tiêu

### Mục tiêu Chính
[Một câu mô tả mục tiêu]

### Chỉ số Thành công
- [ ] [Metric 1]: [Target]
- [ ] [Metric 2]: [Target]

---

## 📦 Phạm vi

### Bao gồm (In Scope)
- [x] [Tính năng 1]
- [x] [Tính năng 2]

### Không bao gồm (Out of Scope)
- [ ] [Tính năng sẽ làm sau]
- [ ] [Tính năng không làm]

---

## 🗓️ Các Giai đoạn

### Giai đoạn 1: [Tên] (Week 1)
**Mục tiêu**: [...]

| Task | Owner | Status | Notes |
|------|-------|--------|-------|
| [ ] Task 1 | [Tên] | 🔘 | |
| [ ] Task 2 | [Tên] | 🔘 | |

### Giai đoạn 2: [Tên] (Week 2)
...

---

## 🔗 Phụ thuộc

| Phụ thuộc | Owner | Deadline | Status |
|-----------|-------|----------|--------|
| API xyz | Backend | [Date] | 🔘 |
| Design hoàn thành | Designer | [Date] | 🟢 |

---

## ⚠️ Rủi ro

| Rủi ro | Impact | Probability | Mitigation |
|--------|--------|-------------|------------|
| [Rủi ro 1] | High | Medium | [Cách giảm thiểu] |

---

## 📊 Tiến độ

### Week 1
- [x] Task đã hoàn thành
- [ ] Task đang làm

### Week 2
- [ ] Task sắp tới

---

## 📝 Notes & Decisions

### [YYYY-MM-DD]
- [Quyết định quan trọng]
- [Lý do]

---

## ✅ Definition of Done

- [ ] Code complete & reviewed
- [ ] Tests written & passing
- [ ] Documentation updated
- [ ] Stakeholder sign-off
- [ ] Deployed to production

---

*Cập nhật lần cuối: [Ngày]*
```

---

## 📊 Template Sprint Plan

Xem file `templates/mau-sprint-plan.md` để có template sprint planning chi tiết.

---

## 💡 Best Practices

1. **Cập nhật thường xuyên** - Mỗi ngày hoặc mỗi standup
2. **Rõ ràng về owner** - Mỗi task có người chịu trách nhiệm
3. **Realistic estimates** - Thêm buffer 20-30%
4. **Track blockers** - Ghi nhận và escalate sớm
5. **Document decisions** - Giải thích tại sao, không chỉ cái gì

---

## 🗂️ Naming Convention

```
YYYY-MM-ten-tinh-nang.md

Ví dụ:
- 2026-01-dang-nhap-google.md
- 2026-02-thanh-toan-momo.md
- 2026-Q1-redesign-dashboard.md
```

---

*Cập nhật: Tháng 1, 2026*
