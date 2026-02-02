# Metrics: {{FEATURE_NAME}}

> Làm sao biết feature này thành công?

---

## 1. Primary Metric (North Star)

### {{PRIMARY_METRIC_NAME}}

**Định nghĩa:** {{DEFINITION}}

**Target:** {{TARGET_VALUE}}

**Baseline hiện tại:** {{CURRENT_VALUE}}

**Cách đo:**
```
{{MEASUREMENT_METHOD}}
```

**Timeframe:** {{TIMEFRAME}} sau launch

---

## 2. Secondary Metrics

### 2.1 {{SECONDARY_METRIC_1}}

| Item | Value |
|------|-------|
| Định nghĩa | {{DEFINITION}} |
| Target | {{TARGET}} |
| Cách đo | {{HOW}} |

### 2.2 {{SECONDARY_METRIC_2}}

| Item | Value |
|------|-------|
| Định nghĩa | {{DEFINITION}} |
| Target | {{TARGET}} |
| Cách đo | {{HOW}} |

---

## 3. Guardrail Metrics

> Những metrics KHÔNG ĐƯỢC GIẢM sau khi launch feature

| Metric | Ngưỡng chấp nhận | Hiện tại |
|--------|------------------|----------|
| {{GUARDRAIL_1}} | Không giảm > {{X}}% | {{CURRENT}} |
| {{GUARDRAIL_2}} | Không giảm > {{Y}}% | {{CURRENT}} |

---

## 4. Leading Indicators

> Metrics sớm cho thấy feature đang đi đúng/sai hướng

| Indicator | Ý nghĩa | Target |
|-----------|---------|--------|
| {{LEADING_1}} | {{MEANING}} | {{TARGET}} |
| {{LEADING_2}} | {{MEANING}} | {{TARGET}} |

---

## 5. Event Tracking Required

### Events cần track

| Event Name | Trigger | Properties |
|------------|---------|------------|
| `{{EVENT_1}}` | Khi user {{ACTION}} | `{prop1, prop2}` |
| `{{EVENT_2}}` | Khi user {{ACTION}} | `{prop1, prop2}` |
| `{{EVENT_3}}` | Khi user {{ACTION}} | `{prop1}` |

### Funnel cần theo dõi

```
{{STEP_1}} (100%)
    ↓
{{STEP_2}} (target: {{X}}%)
    ↓
{{STEP_3}} (target: {{Y}}%)
    ↓
{{STEP_4}} (target: {{Z}}%)
```

---

## 6. Dashboard Requirements

### Cần tạo dashboard hiển thị:

- [ ] Primary metric trend (daily/weekly)
- [ ] Funnel conversion rates
- [ ] Breakdown by user segment
- [ ] Error rates
- [ ] Comparison với baseline

### Tools

- Analytics: {{ANALYTICS_TOOL}}
- Dashboard: {{DASHBOARD_TOOL}}

---

## 7. Review Schedule

| Milestone | Ngày | Check gì |
|-----------|------|----------|
| 1 day post-launch | {{DATE}} | Errors, crashes |
| 1 week | {{DATE}} | Adoption rate |
| 2 weeks | {{DATE}} | Primary metric |
| 1 month | {{DATE}} | Full evaluation |

---

## 8. Success Definition

### Feature THÀNH CÔNG nếu:
- [ ] Primary metric đạt {{TARGET}}
- [ ] Guardrail metrics không giảm > {{X}}%
- [ ] User feedback positive > {{Y}}%

### Feature CẦN ITERATE nếu:
- [ ] Primary metric đạt 50-80% target
- [ ] Có specific pain points từ feedback

### Feature THẤT BẠI nếu:
- [ ] Primary metric < 50% target
- [ ] Guardrail metrics giảm > {{Z}}%
- [ ] High volume negative feedback

---

*Metrics defined by: {{AUTHOR}} | Date: {{DATE}}*
