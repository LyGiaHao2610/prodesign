---
mo-ta: Quản lý roadmap và backlog features
---

# Lệnh /roadmap

Xem và quản lý roadmap sản phẩm.

## Cách dùng

```
/roadmap                    # Xem roadmap hiện tại
/roadmap add [feature]      # Thêm feature vào backlog
/roadmap status             # Xem status tổng quan
/roadmap sync               # Sync với Linear (nếu có)
```

## Khi người dùng gọi `/roadmap`

### 1. Đọc file `.claude/docs/roadmap.md`

### 2. Hiển thị roadmap theo format:

```
╔═══════════════════════════════════════════════════════════════╗
║  📍 ROADMAP                                                   ║
╠═══════════════════════════════════════════════════════════════╣
║                                                               ║
║  🚀 ĐANG LÀM (In Progress)                                    ║
║  ─────────────────────────────────────────────────────────    ║
║  • [FE-001] Đăng nhập Google         → Sprint 5               ║
║  • [FE-002] Dark mode                → Sprint 5               ║
║                                                               ║
║  📋 SẮP LÀM (Next Up)                                         ║
║  ─────────────────────────────────────────────────────────    ║
║  • [FE-003] Push notification        → Sprint 6               ║
║  • [FE-004] Export PDF               → Sprint 6               ║
║                                                               ║
║  💡 BACKLOG                                                   ║
║  ─────────────────────────────────────────────────────────    ║
║  • Đăng nhập Apple                   → Chưa plan              ║
║  • Multi-language                    → Chưa plan              ║
║  • Offline mode                      → Chưa plan              ║
║                                                               ║
║  ✅ ĐÃ XONG (Recently Completed)                              ║
║  ─────────────────────────────────────────────────────────    ║
║  • [FE-000] Onboarding flow          → Sprint 4 ✓             ║
║                                                               ║
╚═══════════════════════════════════════════════════════════════╝

📊 Progress: 1/5 features done (20%)

🔗 Linear: https://linear.app/[team]/project/[id]
🎨 Figma: https://figma.com/file/[id]
```

## Khi người dùng gọi `/roadmap add [feature]`

1. Hỏi thêm thông tin:
   - Priority (P0/P1/P2)?
   - Target sprint?
   - Có Linear ticket chưa?

2. Thêm vào `.claude/docs/roadmap.md`

3. Hỏi có muốn chạy `/feature [tên]` để bắt đầu không

## Khi người dùng gọi `/roadmap sync`

1. Đọc Linear project (nếu có link trong roadmap.md)
2. Cập nhật status từ Linear
3. Highlight những thay đổi

## File roadmap.md

Xem template tại `.claude/docs/roadmap.md`
