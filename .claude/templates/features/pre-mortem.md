# Pre-mortem: {{FEATURE_NAME}}

> "Tưởng tượng feature đã launch và THẤT BẠI. Tại sao?"

---

## Mục đích

Pre-mortem giúp dự đoán các vấn đề TRƯỚC KHI chúng xảy ra, để có kế hoạch phòng tránh.

---

## 1. Rủi ro về User Experience

| Rủi ro | Khả năng | Ảnh hưởng | Cách phòng tránh |
|--------|----------|-----------|------------------|
| User không hiểu cách dùng | Cao/TB/Thấp | Cao/TB/Thấp | {{MITIGATION}} |
| Flow quá phức tạp | | | |
| Thiếu feedback/confirmation | | | |
| {{CUSTOM_UX_RISK}} | | | |

### Chi tiết

**User không hiểu cách dùng:**
- Dấu hiệu: {{SIGNS}}
- Phòng tránh: {{PREVENTION}}
- Backup plan: {{BACKUP}}

---

## 2. Rủi ro về Technical

| Rủi ro | Khả năng | Ảnh hưởng | Cách phòng tránh |
|--------|----------|-----------|------------------|
| Performance chậm | | | |
| Lỗi edge cases | | | |
| Integration issues | | | |
| {{CUSTOM_TECH_RISK}} | | | |

---

## 3. Rủi ro về Business

| Rủi ro | Khả năng | Ảnh hưởng | Cách phòng tránh |
|--------|----------|-----------|------------------|
| Không đủ user adopt | | | |
| Canibalize feature khác | | | |
| Tốn resource nhưng low impact | | | |
| {{CUSTOM_BIZ_RISK}} | | | |

---

## 4. Rủi ro về Timeline

| Rủi ro | Khả năng | Ảnh hưởng | Cách phòng tránh |
|--------|----------|-----------|------------------|
| Scope creep | | | |
| Dependencies delay | | | |
| Under-estimated effort | | | |

---

## 5. Worst Case Scenarios

### Scenario A: {{WORST_CASE_1}}

**Điều gì xảy ra:**
{{DESCRIPTION}}

**Ảnh hưởng:**
{{IMPACT}}

**Cách recover:**
{{RECOVERY}}

---

### Scenario B: {{WORST_CASE_2}}

**Điều gì xảy ra:**
{{DESCRIPTION}}

**Ảnh hưởng:**
{{IMPACT}}

**Cách recover:**
{{RECOVERY}}

---

## 6. Kill Criteria

**Dừng/rollback feature nếu:**
- [ ] {{KILL_CRITERIA_1}}
- [ ] {{KILL_CRITERIA_2}}
- [ ] {{KILL_CRITERIA_3}}

---

## 7. Monitoring Plan

**Sau khi launch, theo dõi:**

| Metric | Alert threshold | Action |
|--------|-----------------|--------|
| Error rate | > {{X}}% | Investigate |
| Drop-off rate | > {{Y}}% | Review UX |
| Support tickets | > {{Z}}/day | Fix issues |

---

## 8. Action Items

Dựa trên pre-mortem, cần làm:

- [ ] {{ACTION_1}}
- [ ] {{ACTION_2}}
- [ ] {{ACTION_3}}

---

## Summary

**Top 3 rủi ro cần chú ý nhất:**

1. **{{TOP_RISK_1}}** - {{MITIGATION_1}}
2. **{{TOP_RISK_2}}** - {{MITIGATION_2}}
3. **{{TOP_RISK_3}}** - {{MITIGATION_3}}

---

*Pre-mortem by: {{AUTHOR}} | Date: {{DATE}}*
