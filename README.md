# ProDesign - AI Product Assistant

> **Biến Claude Code thành Trợ Lý Sản Phẩm Thông Minh** - hỗ trợ Product Owner và Designer phát triển tính năng, viết tài liệu, thiết kế UI/UX.

---

## Cài Đặt Nhanh (1 phút)

### Bước 1: Clone về máy

```bash
git clone https://github.com/LyGiaHao2610/prodesign.git ~/prodesign
```

### Bước 2: Thêm lệnh tắt

**macOS / Linux (zsh):**
```bash
echo '
# ProDesign - AI Product Assistant
prodesign() {
  cp -r ~/prodesign/.claude . 2>/dev/null || echo "Không tìm thấy .claude"
  cp ~/prodesign/CLAUDE.md . 2>/dev/null || echo "Không tìm thấy CLAUDE.md"
  echo "Done! Chạy /init trong Claude Code để khởi tạo"
}' >> ~/.zshrc

source ~/.zshrc
```

**macOS / Linux (bash):**
```bash
echo '
# ProDesign - AI Product Assistant
prodesign() {
  cp -r ~/prodesign/.claude . 2>/dev/null || echo "Không tìm thấy .claude"
  cp ~/prodesign/CLAUDE.md . 2>/dev/null || echo "Không tìm thấy CLAUDE.md"
  echo "Done! Chạy /init trong Claude Code để khởi tạo"
}' >> ~/.bashrc

source ~/.bashrc
```

### Bước 3: Xong!

Từ giờ, vào bất kỳ project nào:

```bash
cd ~/my-project
prodesign
```

---

## Sử Dụng

### 1. Thêm vào project

```bash
cd ~/my-project
prodesign
```

### 2. Mở Claude Code và khởi tạo

```
/init
```

AI sẽ:
- Scan `package.json` -> Tự điền tech stack
- Scan `tailwind.config` -> Tự điền design system
- Hỏi về sản phẩm -> Điền product context
- **Xong!** AI đã hiểu về project

### 3. Bắt đầu làm việc

```
/feature Đăng nhập Google     # Tạo feature đầy đủ
/prd Thanh toán Momo          # Viết PRD
/story Giỏ hàng               # Viết User Stories
/roadmap                      # Xem roadmap
```

---

## So Sánh Trước/Sau

| Trước (AI thường) | Sau (Có ProDesign) |
|-------------------|------------------|
| "Đây là form login generic..." | "Dựa trên design system (primary #FF6B35, font Inter), form login như sau..." |
| "Bạn có thể làm referral..." | "Với persona creators 20-30 tuổi và đối thủ Anchor, tôi đề xuất..." |
| "Đây là code React..." | "Theo tech stack (React + Zustand + TailwindCSS), code như sau..." |

---

## Các Lệnh

| Lệnh | Mô tả |
|------|-------|
| `/init` | Khởi tạo - AI scan project và học context |
| `/feature [tên]` | Tạo feature đầy đủ (Discovery -> Definition -> Design -> Handoff) |
| `/prd [tính năng]` | Tạo PRD phù hợp với persona |
| `/story [tính năng]` | Viết User Stories |
| `/roadmap` | Xem và quản lý roadmap |
| `/review-thiet-ke` | Review theo design system |
| `/doi-thu` | Phân tích đối thủ |
| `/sync` | Cập nhật context khi project thay đổi |
| `/help` | Xem tất cả lệnh |

---

## Quy Trình /feature

Khi chạy `/feature [tên]`, AI dẫn dắt qua 4 giai đoạn:

```
PHASE 1: DISCOVERY
  Brainstorm + Research đối thủ
  -> brainstorm.md, research.md

PHASE 2: DEFINITION
  Overview + User Stories + Pre-mortem
  -> overview.md, user-story.md, metrics.md

PHASE 3: DESIGN
  User Flow + Wireframe + Mockup
  -> user-flow.html, mockup.html

PHASE 4: HANDOFF
  Brief cho stakeholder + Specs cho Dev
  -> brief.md, HANDOFF.md
```

---

## Cấu Trúc Thư Mục

```
your-project/
├── CLAUDE.md                    # Hướng dẫn cho AI
├── features/                    # Output của /feature
│   └── ten-feature/
│       ├── 1-discovery/
│       ├── 2-definition/
│       ├── 3-design/
│       ├── brief.md             # Share stakeholder
│       └── HANDOFF.md           # Gửi Dev team
│
└── .claude/
    ├── docs/                    # Context sản phẩm (AI tự điền)
    │   ├── boi-canh-san-pham.md
    │   ├── he-thong-thiet-ke.md
    │   └── cong-nghe.md
    ├── commands/                # Các lệnh tắt
    ├── templates/               # Mẫu tài liệu
    └── skills/                  # Kiến thức chuyên môn
```

---

## Tùy Chỉnh

Chỉnh sửa các file trong `.claude/docs/`:

| File | Nội dung |
|------|----------|
| `boi-canh-san-pham.md` | Sản phẩm, persona, đối thủ |
| `he-thong-thiet-ke.md` | Colors, fonts, components |
| `cong-nghe.md` | Tech stack, conventions |

---

## Cập Nhật

```bash
# Cập nhật boilerplate gốc
cd ~/prodesign && git pull

# Cập nhật cho project đã có
cd ~/my-project && prodesign
```

---

## Yêu Cầu

- [Claude Code](https://claude.ai/code) (CLI hoặc VSCode Extension)
- macOS / Linux / Windows (WSL)

---

## License

MIT
