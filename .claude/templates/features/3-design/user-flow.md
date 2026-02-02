# User Flow: {{FEATURE_NAME}}

> Chi tiết các flow của feature

---

## 1. Entry Points

User có thể bắt đầu feature từ:

| Entry Point | Context | % Traffic (estimate) |
|-------------|---------|----------------------|
| {{ENTRY_1}} | {{CONTEXT}} | {{PERCENT}}% |
| {{ENTRY_2}} | {{CONTEXT}} | {{PERCENT}}% |
| {{ENTRY_3}} | {{CONTEXT}} | {{PERCENT}}% |

---

## 2. Main Flow (Happy Path)

```
┌─────────────┐
│  {{STEP_1}} │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│  {{STEP_2}} │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│  {{STEP_3}} │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│  {{STEP_4}} │
└─────────────┘
```

### Chi tiết từng bước

#### Step 1: {{STEP_1_NAME}}

- **User action:** {{ACTION}}
- **System response:** {{RESPONSE}}
- **UI element:** {{UI_ELEMENT}}
- **Next:** → Step 2

#### Step 2: {{STEP_2_NAME}}

- **User action:** {{ACTION}}
- **System response:** {{RESPONSE}}
- **UI element:** {{UI_ELEMENT}}
- **Next:** → Step 3

#### Step 3: {{STEP_3_NAME}}

- **User action:** {{ACTION}}
- **System response:** {{RESPONSE}}
- **UI element:** {{UI_ELEMENT}}
- **Next:** → Step 4 hoặc Error

#### Step 4: {{STEP_4_NAME}} (Success)

- **System response:** {{RESPONSE}}
- **UI element:** {{UI_ELEMENT}}
- **Exit:** User quay về {{DESTINATION}}

---

## 3. Alternative Flows

### Flow A: {{ALT_FLOW_1}}

```
Step 2 → [Condition: {{CONDITION}}] → {{ALT_STEP}} → Step 4
```

**Mô tả:** {{DESCRIPTION}}

### Flow B: {{ALT_FLOW_2}}

```
Step 3 → [Condition: {{CONDITION}}] → {{ALT_STEP}} → Exit
```

**Mô tả:** {{DESCRIPTION}}

---

## 4. Error Flows

### Error 1: {{ERROR_1}}

```
Step {{X}} → [Error: {{ERROR_TYPE}}] → Show Error UI → Retry/Exit
```

| Item | Detail |
|------|--------|
| Trigger | {{TRIGGER}} |
| Error message | "{{MESSAGE}}" |
| UI | {{UI_TYPE}} (Toast/Dialog/Inline) |
| User options | {{OPTIONS}} |

### Error 2: {{ERROR_2}}

| Item | Detail |
|------|--------|
| Trigger | {{TRIGGER}} |
| Error message | "{{MESSAGE}}" |
| UI | {{UI_TYPE}} |
| User options | {{OPTIONS}} |

---

## 5. UI States

### Loading States

| Khi nào | UI Element | Duration |
|---------|------------|----------|
| {{LOADING_1}} | Spinner / Skeleton | {{DURATION}} |
| {{LOADING_2}} | Button disabled + spinner | {{DURATION}} |

### Success States

| Khi nào | UI Element | Duration |
|---------|------------|----------|
| {{SUCCESS_1}} | Toast "{{MESSAGE}}" | 3s auto-dismiss |
| {{SUCCESS_2}} | {{UI_TYPE}} | {{DURATION}} |

### Error States

| Khi nào | UI Element | Behavior |
|---------|------------|----------|
| {{ERROR_1}} | Toast error | Auto-dismiss 5s |
| {{ERROR_2}} | Dialog | User must dismiss |
| {{ERROR_3}} | Inline error | Persist until fixed |

---

## 6. Decision Points

### Decision 1: {{DECISION_1}}

```
            ┌─── Yes ──→ {{PATH_YES}}
            │
[{{QUESTION}}]
            │
            └─── No ───→ {{PATH_NO}}
```

### Decision 2: {{DECISION_2}}

```
                    ┌─── Option A ──→ {{PATH_A}}
                    │
[{{QUESTION}}] ─────┼─── Option B ──→ {{PATH_B}}
                    │
                    └─── Option C ──→ {{PATH_C}}
```

---

## 7. Exit Points

| Exit Point | Condition | Destination |
|------------|-----------|-------------|
| Success | Flow hoàn tất | {{DESTINATION}} |
| Cancel | User cancel | {{DESTINATION}} |
| Error (unrecoverable) | {{CONDITION}} | {{DESTINATION}} |
| Timeout | > {{X}} seconds | {{DESTINATION}} |

---

## 8. Edge Cases

| Case | Điều kiện | Xử lý |
|------|-----------|-------|
| {{EDGE_1}} | {{CONDITION}} | {{HANDLING}} |
| {{EDGE_2}} | {{CONDITION}} | {{HANDLING}} |
| {{EDGE_3}} | {{CONDITION}} | {{HANDLING}} |

---

## 9. Flow Diagram

Xem visualization: [user-flow.html](user-flow.html)

---

*Flow documented by: {{AUTHOR}} | Date: {{DATE}}*
