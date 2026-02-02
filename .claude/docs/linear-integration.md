# Linear Integration Guide

> Hướng dẫn sử dụng Linear cùng với workflow này

---

## 1. Cấu Trúc Project trong Linear

### Recommended Structure

```
Workspace
├── Team: [Product Name]
│   ├── Project: [Feature Name]
│   │   ├── Issue: [FE-001] Discovery
│   │   ├── Issue: [FE-002] PRD
│   │   ├── Issue: [FE-003] Design
│   │   └── Issue: [FE-004] Handoff
│   │
│   └── Project: [Another Feature]
│       └── ...
```

### Labels Setup

Tạo labels để match với workflow:

| Label | Color | Mô tả |
|-------|-------|-------|
| `phase:discovery` | 🟣 Purple | Đang research |
| `phase:definition` | 🔵 Blue | Đang viết PRD |
| `phase:design` | 🟢 Green | Đang design |
| `phase:handoff` | 🟡 Yellow | Ready cho dev |
| `type:feature` | ⚪ Gray | Feature mới |
| `type:improvement` | ⚪ Gray | Cải tiến |
| `type:research` | ⚪ Gray | Research task |

### Status Workflow

```
Backlog → Todo → In Progress → In Review → Done
   │                              │
   │                              └── Design review
   └── Chưa prioritize                 hoặc stakeholder review
```

---

## 2. Tạo Issue cho Feature

### Template Issue

Khi tạo issue mới cho feature, dùng format này:

```markdown
## Overview
[1-2 câu mô tả feature]

## Problem
[Vấn đề cần giải quyết]

## Success Metrics
- [ ] [Metric 1]
- [ ] [Metric 2]

## Links
- 📁 Feature folder: `features/[tên-feature]/`
- 🎨 Figma: [Link]
- 📋 PRD: [Link to overview.md]

## Checklist
- [ ] Discovery complete
- [ ] PRD approved
- [ ] Design approved
- [ ] Handoff complete
```

### Sub-issues

Tạo sub-issues cho từng phase:

1. **[Feature] Discovery**
   - Brainstorm
   - User research
   - Competitor analysis

2. **[Feature] Definition**
   - Write PRD
   - Write user stories
   - Get stakeholder approval

3. **[Feature] Design**
   - User flow
   - Wireframe
   - Hi-fi mockup
   - Design review

4. **[Feature] Handoff**
   - Prepare HANDOFF.md
   - Dev kickoff meeting
   - Answer questions

---

## 3. Linking với Feature Folder

### Trong Linear Issue

Luôn add link đến feature folder:

```markdown
## Documents
- 📁 Local: `features/ten-feature/`
- 📝 Brief: `features/ten-feature/brief.md`
- 🎨 Figma: [Link]
```

### Trong Feature Files

Trong `brief.md` và `HANDOFF.md`, luôn có link Linear:

```markdown
## Links
- **Linear**: https://linear.app/[team]/issue/[ID]
```

---

## 4. Workflow với AI

### Sync Roadmap

Khi chạy `/roadmap sync`, AI sẽ:

1. Đọc Linear project từ link trong `roadmap.md`
2. Cập nhật status các features
3. Highlight thay đổi

### Tạo Issue từ Feature

Khi hoàn thành `/feature [tên]`, AI có thể:

1. Suggest tạo Linear issue
2. Cung cấp content để paste vào Linear
3. Remind add links

---

## 5. Best Practices

### Do's ✅

- **Link bidirectional**: Linear ↔ Feature folder
- **Update status**: Khi chuyển phase
- **Use labels**: Dễ filter và track
- **Attach files**: Upload key documents
- **Comment**: Log decisions và discussions

### Don'ts ❌

- Không tạo duplicate issues
- Không để issue stale (cập nhật ít nhất weekly)
- Không skip phases mà không document
- Không forget close issue khi done

---

## 6. Linear Shortcuts

| Action | Shortcut |
|--------|----------|
| New issue | `C` |
| Search | `Cmd + K` |
| My issues | `G` then `M` |
| Team issues | `G` then `T` |
| Add label | `L` |
| Set priority | `P` |
| Set status | `S` |
| Assign | `A` |

---

## 7. API Integration (Advanced)

Nếu muốn automate, Linear có API:

```bash
# Get issues
curl -X POST https://api.linear.app/graphql \
  -H "Authorization: [API_KEY]" \
  -H "Content-Type: application/json" \
  -d '{"query": "{ issues { nodes { title state { name } } } }"}'
```

### Use Cases

- Auto-create issues khi tạo feature folder
- Sync status giữa Linear và local files
- Generate reports

---

## 8. Templates

### Linear Issue Template

```
Title: [FE-XXX] [Feature Name]

Description:
## Summary
[Brief description]

## Problem Statement
[What problem does this solve?]

## Success Criteria
- [ ] Criteria 1
- [ ] Criteria 2

## Design
- Figma: [link]
- Prototype: [link]

## Documents
- PRD: [link]
- User Stories: [link]

## Dependencies
- [List any dependencies]

## Notes
- [Additional context]
```

---

## 9. Checklist Setup

Trong Linear, có thể tạo checklist template cho mỗi phase. Vào Settings → Templates → Create.

Điều này giúp standardize process across team.
