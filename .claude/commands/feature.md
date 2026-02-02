---
mo-ta: Tạo feature mới với đầy đủ tài liệu theo quy trình chuẩn
---

# Lệnh /feature

Tạo folder feature mới và dẫn dắt qua quy trình từ Discovery → Definition → Design → Handoff.

## Cách dùng

```
/feature [tên feature]
```

## Quy trình

### Bước 0: Kiểm tra và Tạo Cấu trúc

**QUAN TRỌNG: Phải thực sự tạo folder bằng Bash tool, không chỉ mô tả!**

1. **Chuyển tên feature thành slug** (lowercase, dấu gạch ngang, không dấu)
   - "Đăng nhập Google" → `dang-nhap-google`
   - "Thanh toán MoMo" → `thanh-toan-momo`

2. **Tạo cấu trúc folder bằng Bash:**

```bash
mkdir -p features/[ten-feature]/1-discovery/_references
mkdir -p features/[ten-feature]/2-definition
mkdir -p features/[ten-feature]/3-design
```

3. **Thông báo cho người dùng:**

```
✅ Đã tạo cấu trúc:

features/
└── [tên-feature]/
    ├── 1-discovery/
    │   └── _references/
    ├── 2-definition/
    └── 3-design/

Bắt đầu quy trình phát triển feature...
```

---

### PHASE 1: DISCOVERY 🔍

#### 1.1 Brainstorm (brainstorm.md)

Bắt đầu cuộc trò chuyện để hiểu feature:

```
══════════════════════════════════════════
📍 PHASE 1: DISCOVERY
══════════════════════════════════════════

🧠 BRAINSTORM
─────────────

Hãy cùng brainstorm về feature "[Tên feature]".
Cho tôi biết:

1. 💡 Ý tưởng này đến từ đâu?
   (Feedback user, data, đối thủ, hay tự nghĩ ra?)

2. 😤 Vấn đề/Pain point cụ thể là gì?
   (User đang gặp khó khăn gì?)

3. 🎯 Kỳ vọng sau khi có feature này?
   (User sẽ làm được gì, cảm thấy thế nào?)

4. 🚫 Có gì KHÔNG nên làm trong feature này?
   (Giới hạn scope)
```

**Tiếp tục hỏi đào sâu** (2-3 câu nữa tùy context):
- "Có user cụ thể nào phản hồi về vấn đề này không?"
- "Tần suất user gặp vấn đề này như thế nào?"
- "Nếu không có feature này, user đang workaround bằng cách nào?"

**Sau khi đủ thông tin** → Dùng **Write tool** để tạo file `1-discovery/brainstorm.md` theo template `.claude/templates/features/1-discovery/brainstorm.md`

#### 1.2 Research (research.md)

```
🔍 RESEARCH
───────────

Để tôi nghiên cứu thêm về feature này...
```

**Nội dung cần cover:**
- Đối thủ làm feature tương tự như thế nào?
- Best practices trong ngành
- Có reference/inspiration nào không?

**Hỏi người dùng:**
- "Có app nào bạn thấy làm tốt feature này không?"
- "Bạn có screenshots hay links tham khảo không?" (lưu vào `_references/`)

**Sau khi đủ** → Dùng **Write tool** để tạo file `1-discovery/research.md` theo template `.claude/templates/features/1-discovery/research.md`

```
✅ Phase 1 hoàn tất!
   • brainstorm.md ✓
   • research.md ✓

Chuyển sang Phase 2: Definition...
```

---

### PHASE 2: DEFINITION 📋

#### 2.1 Overview (overview.md)

```
══════════════════════════════════════════
📍 PHASE 2: DEFINITION
══════════════════════════════════════════

📋 OVERVIEW
───────────

Dựa trên brainstorm, tôi sẽ viết overview cho feature này...
```

**Tạo overview bao gồm:**
- **Why**: Tại sao làm feature này
- **What**: Feature này là gì, làm gì
- **Who**: Ai sẽ dùng
- **Goals**: Mục tiêu cụ thể
- **Non-goals**: Những gì KHÔNG làm
- **Success criteria**: Thế nào là thành công

→ Dùng **Write tool** tạo `2-definition/overview.md` theo template `.claude/templates/features/2-definition/overview.md`, rồi cho user review

#### 2.2 User Stories (user-story.md)

```
📖 USER STORIES
───────────────

Tôi sẽ viết các user stories...
```

**Format mỗi story:**
```markdown
### Story 1: [Tên story]

**As a** [persona]
**I want** [action]
**So that** [benefit]

**Acceptance Criteria:**
- [ ] Criteria 1
- [ ] Criteria 2
- [ ] Criteria 3
```

**Bao gồm các scenarios:**
- Happy path (main flow)
- Alternative paths
- Edge cases
- Error cases

→ Dùng **Write tool** tạo `2-definition/user-story.md` theo template `.claude/templates/features/2-definition/user-story.md`

#### 2.3 Pre-mortem (pre-mortem.md)

```
⚠️ PRE-MORTEM
─────────────

Hãy tưởng tượng feature này đã launch và THẤT BẠI.
Nguyên nhân có thể là gì?
```

**Phân tích các rủi ro:**

| Rủi ro | Khả năng | Ảnh hưởng | Cách phòng tránh |
|--------|----------|-----------|------------------|
| User không hiểu cách dùng | Cao | Cao | Thêm onboarding tooltip |
| ... | ... | ... | ... |

→ Dùng **Write tool** tạo `2-definition/pre-mortem.md` theo template `.claude/templates/features/2-definition/pre-mortem.md`

#### 2.4 Metrics (metrics.md)

```
📊 METRICS
──────────

Làm sao biết feature này thành công?
```

**Định nghĩa:**
- **Primary metric**: Chỉ số chính (VD: +20% signup)
- **Secondary metrics**: Chỉ số phụ
- **Guardrail metrics**: Chỉ số không được giảm
- **Cách đo**: Event tracking cần thiết

→ Dùng **Write tool** tạo `2-definition/metrics.md` theo template `.claude/templates/features/2-definition/metrics.md`

```
✅ Phase 2 hoàn tất!
   • overview.md ✓
   • user-story.md ✓
   • pre-mortem.md ✓
   • metrics.md ✓

Chuyển sang Phase 3: Design...
```

---

### PHASE 3: DESIGN 🎨

#### 3.1 User Flow (user-flow.md + user-flow.html)

```
══════════════════════════════════════════
📍 PHASE 3: DESIGN
══════════════════════════════════════════

🔀 USER FLOW
────────────

Tôi sẽ vẽ flow chi tiết cho feature này...
```

**Nội dung flow:**
- Entry points (user vào từ đâu)
- Main flow (happy path)
- Decision points (điều kiện rẽ nhánh)
- Edge cases & error states
- Exit points (user kết thúc ở đâu)

**UI States cần thể hiện:**
- Khi nào hiện Loading
- Khi nào hiện Toast/Snackbar
- Khi nào hiện Dialog/Modal
- Khi nào hiện Bottom Sheet
- Khi nào hiện Alert/Error

→ Dùng **Write tool** tạo `3-design/user-flow.md` theo template `.claude/templates/features/3-design/user-flow.md`
→ Dùng **Write tool** tạo `3-design/user-flow.html` theo template `.claude/templates/features/3-design/user-flow.html` (visual diagram với Mermaid.js)

#### 3.2 Wireframe (wireframe.html)

```
✏️ WIREFRAME
────────────

Tôi sẽ tạo wireframe lo-fi...
```

**Tạo HTML với:**
- Layout cơ bản (boxes, placeholders)
- Responsive (mobile-first)
- Ghi chú cho từng element
- Interactive states cơ bản

→ Dùng **Write tool** tạo `3-design/wireframe.html` theo template `.claude/templates/features/3-design/wireframe.html`

#### 3.3 Mockup (mockup.html)

```
🎨 MOCKUP
─────────

Tôi sẽ tạo mockup hi-fi theo design system...
```

**Đọc design system từ** `.claude/docs/he-thong-thiet-ke.md`:
- Colors
- Typography
- Spacing
- Border radius
- Shadows

**Tạo HTML với:**
- Tailwind CSS (hoặc inline styles theo design system)
- Responsive design
- Hover/Active states
- Realistic content

→ Dùng **Write tool** tạo `3-design/mockup.html` theo template `.claude/templates/features/3-design/mockup.html`

```
✅ Phase 3 hoàn tất!
   • user-flow.md ✓
   • user-flow.html ✓
   • wireframe.html ✓
   • mockup.html ✓

Tạo files tổng hợp...
```

---

### PHASE 4: FINALIZE 📦

#### 4.1 Brief (brief.md)

Dùng **Write tool** tạo `brief.md` ở root của feature folder theo template `.claude/templates/features/brief.md`:

Tóm tắt 1 trang cho stakeholder:

```markdown
# [Feature Name] - Brief

## TL;DR
[1-2 câu mô tả]

## Problem
[Vấn đề đang giải quyết]

## Solution
[Giải pháp đề xuất]

## Success Metrics
[KPIs chính]

## Timeline
[Rough estimate: S/M/L]

## Links
- [Overview](2-definition/overview.md)
- [User Flow](3-design/user-flow.html)
- [Mockup](3-design/mockup.html)
```

#### 4.2 Handoff (HANDOFF.md)

Dùng **Write tool** tạo `HANDOFF.md` ở root của feature folder theo template `.claude/templates/features/HANDOFF.md`:

File tổng hợp cho Dev/AI coding:

```markdown
# Feature: [Tên]

> File này tổng hợp tất cả context để implement.

## 1. Tóm tắt
[Từ overview.md]

## 2. User Stories
[Từ user-story.md]

## 3. User Flow
[Tóm tắt + link đến user-flow.html]

## 4. UI States
[Từ user-flow.md]

## 5. Edge Cases & Error Handling
[Từ user-story.md + pre-mortem.md]

## 6. Out of Scope
[Từ overview.md]

## 7. References
[Links đến các files]
```

#### 4.3 Changelog (changelog.md)

Dùng **Write tool** tạo `changelog.md` ở root của feature folder theo template `.claude/templates/features/changelog.md`:

Khởi tạo changelog:

```markdown
# Changelog

## [Ngày tạo] - Initial version
- Tạo feature documentation
- Hoàn thành Discovery, Definition, Design phases
```

---

### HOÀN TẤT

```
══════════════════════════════════════════
✅ FEATURE "[Tên]" ĐÃ HOÀN TẤT!
══════════════════════════════════════════

📁 Cấu trúc đã tạo:

features/[tên-feature]/
├── 1-discovery/
│   ├── brainstorm.md      ✓
│   ├── research.md        ✓
│   └── _references/
├── 2-definition/
│   ├── overview.md        ✓
│   ├── user-story.md      ✓
│   ├── pre-mortem.md      ✓
│   └── metrics.md         ✓
├── 3-design/
│   ├── user-flow.md       ✓
│   ├── user-flow.html     ✓ (mở để xem diagram)
│   ├── wireframe.html     ✓ (mở để xem lo-fi)
│   └── mockup.html        ✓ (mở để xem hi-fi)
├── brief.md               ✓ (share cho stakeholder)
├── HANDOFF.md             ✓ (cho Dev/AI đọc)
└── changelog.md           ✓

══════════════════════════════════════════
```

#### 4.4 Tạo Linear Issue (Tự động)

**Hỏi người dùng:**
```
📋 LINEAR INTEGRATION
─────────────────────

Bạn có muốn tạo issue trên Linear không?
```

**Nếu người dùng đồng ý:**

1. **Hỏi thông tin cần thiết:**
   - Team name/ID (nếu chưa biết)
   - Project name (nếu có)
   - Labels (suggest: `phase:handoff`, `type:feature`)

2. **Dùng MCP Linear tool `mcp__linear-tevi__create_issue`** để tạo issue:

**Description sẽ chứa TOÀN BỘ nội dung HANDOFF.md** (copy nguyên văn), format như sau:

```markdown
# Feature: [Tên Feature]

> 📋 **HANDOFF DOCUMENT** - Tài liệu đầy đủ cho Dev team

---

[COPY TOÀN BỘ NỘI DUNG TỪ HANDOFF.md VÀO ĐÂY]

---

## Checklist
- [ ] Design review completed
- [ ] Stakeholder approved
- [ ] Dev kickoff scheduled
- [ ] Implementation started
- [ ] QA completed
- [ ] Released

---
*Generated by ProDesign*
```

**Lưu ý:**
- Copy HANDOFF.md vào description, **CHỈ lấy mục 1-6**
- **BỎ:** mục 7 (Data Requirements), 8 (Analytics), 9 (References), 10 (Questions)
- **GIỮ:** 1. Tóm tắt, 2. User Stories, 3. User Flow, 4. UI States, 5. Edge Cases, 6. Out of Scope

3. **Cập nhật HANDOFF.md** với Linear issue link:
   - Thêm link vào phần References

4. **Thông báo:**
```
✅ Đã tạo Linear issue: [TEAM-123] [Feature Name]
   Link: https://linear.app/[team]/issue/[id]

   Issue đã bao gồm:
   • Summary từ brief
   • User stories
   • Links đến tất cả documents
   • Checklist cho dev workflow
```

**Nếu người dùng từ chối:**
```
OK! Bạn có thể tạo Linear issue sau bằng cách copy nội dung từ brief.md
```

---

### THÔNG BÁO CUỐI CÙNG

```
══════════════════════════════════════════

📌 Next steps:
1. Review mockup.html và feedback
2. Share brief.md cho stakeholder approve
3. Gửi HANDOFF.md cho Dev team
[4. Check Linear issue: [link] (nếu đã tạo)]

Cần chỉnh sửa gì không?
```

---

## Lưu ý Quan trọng

1. **Mỗi phase phải có sự tương tác** - Không tự viết hết mà phải hỏi, confirm với user

2. **Đọc context trước** - Luôn đọc `.claude/docs/` để hiểu sản phẩm, persona, design system

3. **Cho user review từng bước** - Sau mỗi file, hỏi "Có gì cần chỉnh không?"

4. **HTML files phải chạy được** - User có thể mở trực tiếp trong browser để preview

5. **Giữ consistency** - Dùng đúng design system, đúng tone of voice của sản phẩm

## Ví dụ

```
Người dùng: /feature Đăng nhập bằng Apple

Claude: ✅ Đã tạo features/dang-nhap-apple/

        ══════════════════════════════════
        📍 PHASE 1: DISCOVERY
        ══════════════════════════════════

        🧠 BRAINSTORM

        Hãy cùng brainstorm về feature "Đăng nhập bằng Apple".

        1. 💡 Ý tưởng này đến từ đâu?
        2. 😤 User đang gặp khó khăn gì?
        3. 🎯 Kỳ vọng sau khi có feature này?
        4. 🚫 Có gì không nên làm?

Người dùng: User iOS than phiền phải nhập email dài...

Claude: [Hỏi thêm 2-3 câu...]
        [Tổng hợp và lưu brainstorm.md]
        [Tiếp tục sang Research...]
        ...
```
