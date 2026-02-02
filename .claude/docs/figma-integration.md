# Figma Integration Guide

> Hướng dẫn sử dụng Figma cùng với workflow này

---

## 1. Cấu Trúc File Figma

### Recommended Structure

```
📁 [Product Name] - Design System
    └── Components, Colors, Typography, Icons

📁 [Product Name] - Features
    ├── 📄 [Feature 1]
    │   ├── Page: User Flow
    │   ├── Page: Wireframe
    │   ├── Page: Mockup - Mobile
    │   ├── Page: Mockup - Desktop
    │   └── Page: Prototype
    │
    └── 📄 [Feature 2]
        └── ...
```

### Page Naming Convention

```
🔵 User Flow
🟡 Wireframe
🟢 Mockup - Mobile
🟢 Mockup - Desktop
🟣 Prototype
📝 Notes & Feedback
🗄️ Archive
```

---

## 2. Mapping với Feature Folder

| Feature Folder | Figma |
|----------------|-------|
| `3-design/user-flow.html` | Page: User Flow |
| `3-design/wireframe.html` | Page: Wireframe |
| `3-design/mockup.html` | Page: Mockup |
| `HANDOFF.md` | Dev Mode specs |

### Link trong Files

Trong `brief.md`:
```markdown
## Links
- **Figma**: https://figma.com/file/[id]/[name]?node-id=[page-id]
```

Trong `HANDOFF.md`:
```markdown
## Design Assets
- **Figma File**: [Link]
- **Prototype**: [Link to prototype]
- **Dev Mode**: [Link with Dev Mode enabled]
```

---

## 3. Figma Workflow

### Phase 1: User Flow (trong Figma)

```
1. Tạo page "User Flow"
2. Dùng FigJam hoặc shapes để vẽ flow
3. Add annotations với comments
4. Share link để review
```

### Phase 2: Wireframe

```
1. Tạo page "Wireframe"
2. Dùng low-fidelity components (grayscale)
3. Focus vào layout và hierarchy
4. Không cần pixel-perfect
```

### Phase 3: Mockup

```
1. Tạo page "Mockup - Mobile" và "Mockup - Desktop"
2. Apply design system (colors, fonts, components)
3. Design tất cả states (default, hover, loading, error, empty)
4. Responsive variants
```

### Phase 4: Prototype

```
1. Link frames để tạo interactive prototype
2. Add transitions/animations
3. Share prototype link cho user testing
```

---

## 4. Design System Setup

### Color Styles

```
Primary/500     #3B82F6
Primary/600     #2563EB
Secondary/500   #6B7280
Success         #10B981
Warning         #F59E0B
Error           #EF4444
Background      #FFFFFF
Surface         #F9FAFB
Text/Primary    #111827
Text/Secondary  #6B7280
```

### Text Styles

```
Heading/H1      32px / Bold / 1.2 line height
Heading/H2      24px / Bold / 1.3
Heading/H3      20px / Semibold / 1.4
Body/Large      18px / Regular / 1.5
Body/Default    16px / Regular / 1.5
Body/Small      14px / Regular / 1.5
Caption         12px / Regular / 1.4
```

### Components Library

Tối thiểu cần có:
- [ ] Buttons (Primary, Secondary, Outline, Ghost)
- [ ] Input fields (Text, Password, Search, Textarea)
- [ ] Form elements (Checkbox, Radio, Toggle, Select)
- [ ] Cards
- [ ] Navigation (Tab bar, Top bar, Sidebar)
- [ ] Modals / Dialogs
- [ ] Toast / Notifications
- [ ] Loading states
- [ ] Empty states
- [ ] Error states

---

## 5. Handoff với Dev Mode

### Enable Dev Mode

1. Click "Dev Mode" toggle (top right)
2. Select frame
3. View CSS, iOS, Android code

### Best Practices

- **Name layers properly**: Devs sẽ thấy tên layer
- **Use Auto Layout**: Dễ translate sang Flexbox
- **Define constraints**: Responsive behavior
- **Export assets**: Icons, images với @1x, @2x, @3x

### Annotations

Dùng comments hoặc sticky notes cho:
- Interaction behavior
- Animation specs
- Edge cases
- Technical notes

---

## 6. Collaboration

### Share Settings

| Role | Permission |
|------|------------|
| Designer | Can edit |
| PM/PO | Can view + comment |
| Developer | Can view (Dev Mode) |
| Stakeholder | Can view |

### Version History

- Figma auto-saves versions
- Name important versions (double-click on timeline)
- Recommended: Name khi complete mỗi phase

### Comments

- Use `@mention` để tag team members
- Resolve comments khi done
- Pin important discussions

---

## 7. Plugins Recommended

### Must-have

| Plugin | Use case |
|--------|----------|
| **Stark** | Accessibility check |
| **Content Reel** | Realistic placeholder content |
| **Iconify** | Icon library |
| **Unsplash** | Stock photos |

### Nice-to-have

| Plugin | Use case |
|--------|----------|
| **Autoflow** | Draw user flows |
| **Figmotion** | Animation |
| **Design Lint** | Check consistency |
| **Lorem Ipsum** | Placeholder text |

---

## 8. Export Guidelines

### For Developers

```
Icons:      SVG (single color) hoặc PNG (multi-color)
Images:     PNG hoặc JPG (optimized)
            Export @1x, @2x, @3x cho mobile
Specs:      Use Dev Mode hoặc screenshot với annotations
```

### For Documentation

```
Mockups:    PNG @ 2x resolution
User Flow:  PNG hoặc PDF
Prototype:  Share Figma prototype link
```

---

## 9. Figma ↔ HTML Workflow

### Từ Figma sang HTML Mockup

1. Design trong Figma trước
2. Export specs (colors, spacing, sizes)
3. Implement trong `mockup.html` với Tailwind
4. Cross-check với Figma

### Từ HTML sang Figma

1. Nếu prototype bằng HTML trước
2. Screenshot và import vào Figma
3. Recreate với proper components
4. Handoff từ Figma (chuẩn hơn)

---

## 10. Templates

### Cover Page

Mỗi feature file nên có cover page:

```
┌─────────────────────────────────────┐
│                                     │
│  [Feature Name]                     │
│                                     │
│  Status: 🟢 In Progress             │
│  Owner: [Name]                      │
│  Last updated: [Date]               │
│                                     │
│  Links:                             │
│  • Linear: [Link]                   │
│  • PRD: [Link]                      │
│                                     │
└─────────────────────────────────────┘
```

### Component Documentation

Mỗi component nên có:
- All states (default, hover, active, disabled)
- All sizes (S, M, L)
- Usage guidelines
- Do's and Don'ts

---

## 11. Shortcuts

| Action | Mac | Windows |
|--------|-----|---------|
| Search | `Cmd + /` | `Ctrl + /` |
| Frame | `F` | `F` |
| Rectangle | `R` | `R` |
| Text | `T` | `T` |
| Auto Layout | `Shift + A` | `Shift + A` |
| Component | `Cmd + Alt + K` | `Ctrl + Alt + K` |
| Prototype mode | `Shift + E` | `Shift + E` |
| Dev Mode | Toggle in header | Toggle in header |
| Zoom to fit | `Shift + 1` | `Shift + 1` |
| Present | `Cmd + Alt + Enter` | `Ctrl + Alt + Enter` |
