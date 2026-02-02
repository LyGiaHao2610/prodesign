# Feature: {{FEATURE_NAME}}

> **File này tổng hợp tất cả context để implement.**
> Dev/AI đọc file này là đủ hiểu feature.

---

## 1. Tóm tắt

| Item | Detail |
|------|--------|
| **Mục tiêu** | {{OBJECTIVE}} |
| **User** | {{TARGET_USER}} |
| **Thành công khi** | {{SUCCESS_CRITERIA}} |

---

## 2. User Stories

### Story 1: {{STORY_1_TITLE}}

**As a** {{PERSONA}}
**I want** {{ACTION}}
**So that** {{BENEFIT}}

**Acceptance Criteria:**
- [ ] {{AC_1}}
- [ ] {{AC_2}}
- [ ] {{AC_3}}

---

### Story 2: {{STORY_2_TITLE}}

**As a** {{PERSONA}}
**I want** {{ACTION}}
**So that** {{BENEFIT}}

**Acceptance Criteria:**
- [ ] {{AC_1}}
- [ ] {{AC_2}}

---

## 3. User Flow

```
[Entry Point]
    │
    ▼
[{{STEP_1}}]
    │
    ▼
[{{STEP_2}}] ──── Error ──→ [Show Error Toast]
    │                              │
    ▼                              ▼
[{{STEP_3}}]                [Retry / Exit]
    │
    ├── Success ──→ [{{SUCCESS_STATE}}]
    │
    └── Error ──→ [{{ERROR_STATE}}]
```

**Xem flow chi tiết:** [user-flow.html](3-design/user-flow.html)

---

## 4. UI States

| State | Hiển thị | Trigger |
|-------|----------|---------|
| **Default** | {{DEFAULT_UI}} | Initial load |
| **Loading** | {{LOADING_UI}} | Khi đang xử lý |
| **Success** | {{SUCCESS_UI}} | Xử lý thành công |
| **Error** | {{ERROR_UI}} | Xử lý thất bại |
| **Empty** | {{EMPTY_UI}} | Không có data |

---

## 5. Edge Cases & Error Handling

| Case | Điều kiện | Xử lý |
|------|-----------|-------|
| {{EDGE_1}} | {{CONDITION_1}} | {{HANDLING_1}} |
| {{EDGE_2}} | {{CONDITION_2}} | {{HANDLING_2}} |
| {{EDGE_3}} | {{CONDITION_3}} | {{HANDLING_3}} |

### Error Messages

| Error Code | Message hiển thị | Action |
|------------|------------------|--------|
| `{{ERROR_CODE_1}}` | "{{MESSAGE_1}}" | {{ACTION_1}} |
| `{{ERROR_CODE_2}}` | "{{MESSAGE_2}}" | {{ACTION_2}} |
| Network error | "Kiểm tra kết nối mạng" | Retry button |
| Unknown error | "Đã có lỗi xảy ra" | Contact support |

---

## 6. Out of Scope

Những thứ **KHÔNG** làm trong version này:

- ❌ {{OUT_1}}
- ❌ {{OUT_2}}
- ❌ {{OUT_3}}

---

## 7. Data Requirements

### Input cần từ user
| Field | Type | Required | Validation |
|-------|------|----------|------------|
| {{FIELD_1}} | {{TYPE}} | Yes/No | {{VALIDATION}} |
| {{FIELD_2}} | {{TYPE}} | Yes/No | {{VALIDATION}} |

### Data cần hiển thị
| Data | Source | Format |
|------|--------|--------|
| {{DATA_1}} | {{SOURCE}} | {{FORMAT}} |
| {{DATA_2}} | {{SOURCE}} | {{FORMAT}} |

---

## 8. Analytics Events

| Event | Trigger | Properties |
|-------|---------|------------|
| `{{EVENT_1}}` | {{TRIGGER_1}} | `{prop1, prop2}` |
| `{{EVENT_2}}` | {{TRIGGER_2}} | `{prop1}` |
| `{{EVENT_3}}` | {{TRIGGER_3}} | `{prop1, prop2, prop3}` |

---

## 9. References

| Document | Purpose |
|----------|---------|
| [overview.md](2-definition/overview.md) | Full context về feature |
| [user-story.md](2-definition/user-story.md) | Chi tiết user stories |
| [user-flow.md](3-design/user-flow.md) | Flow description |
| [user-flow.html](3-design/user-flow.html) | Flow diagram |
| [wireframe.html](3-design/wireframe.html) | Lo-fi prototype |
| [mockup.html](3-design/mockup.html) | Hi-fi prototype |
| [pre-mortem.md](2-definition/pre-mortem.md) | Risks & mitigations |

---

## 10. Questions / Clarifications

Nếu có thắc mắc, liên hệ:

- **Product:** {{PO_CONTACT}}
- **Design:** {{DESIGNER_CONTACT}}

---

*Last updated: {{DATE}} by {{AUTHOR}}*
