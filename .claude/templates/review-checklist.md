# Review Checklist

> Checklist để review feature trước khi chuyển phase

---

## 1. Discovery → Definition Checklist

Trước khi chuyển từ Discovery sang Definition:

### Problem Validation
- [ ] Problem statement rõ ràng và cụ thể
- [ ] Có data/evidence support (không chỉ assumption)
- [ ] Đã validate với ít nhất 3-5 users
- [ ] Problem align với product vision

### Research
- [ ] Đã phân tích đối thủ (nếu relevant)
- [ ] Đã review existing solutions
- [ ] Có đủ context để move forward
- [ ] Document references đầy đủ

### Alignment
- [ ] Stakeholders đồng ý về problem
- [ ] Priority đã được xác nhận
- [ ] Resource available để tiếp tục

---

## 2. Definition → Design Checklist

Trước khi chuyển từ Definition sang Design:

### PRD Quality
- [ ] Overview rõ ràng: Problem, Solution, Goals
- [ ] Success metrics defined (SMART)
- [ ] Scope boundaries rõ ràng (In/Out)
- [ ] Assumptions và risks documented

### User Stories
- [ ] Đầy đủ user stories cho MVP
- [ ] Acceptance criteria rõ ràng
- [ ] Priority đã set (MoSCoW)
- [ ] Edge cases considered

### Feasibility
- [ ] Đã consult với Tech Lead
- [ ] Không có technical blockers
- [ ] Effort estimate hợp lý
- [ ] Dependencies identified

### Approval
- [ ] PRD đã được review
- [ ] Stakeholder sign-off
- [ ] Ready to start design

---

## 3. Design → Development Checklist

Trước khi handoff cho Dev:

### Design Completeness
- [ ] User flow đầy đủ (happy path + edge cases)
- [ ] Wireframe/Mockup cho tất cả screens
- [ ] Responsive design (nếu cần)
- [ ] Loading/Empty/Error states
- [ ] Micro-interactions defined

### Design System Compliance
- [ ] Đúng color palette
- [ ] Đúng typography
- [ ] Đúng spacing/grid
- [ ] Reuse existing components khi có thể
- [ ] Consistent với existing UI

### Accessibility
- [ ] Color contrast đủ (WCAG AA)
- [ ] Touch targets đủ lớn (44x44px min)
- [ ] Text readable (16px min)
- [ ] Screen reader friendly (nếu applicable)

### Design Review
- [ ] Design review với team
- [ ] Feedback đã addressed
- [ ] Final approval từ stakeholder

### Handoff Assets
- [ ] HANDOFF.md đầy đủ
- [ ] Figma file organized và named properly
- [ ] Assets exported (icons, images)
- [ ] Specs documented (nếu không dùng Figma)
- [ ] Prototype link (nếu có)

---

## 4. Development → QA Checklist

Trước khi chuyển sang QA:

### Functionality
- [ ] Tất cả acceptance criteria met
- [ ] Happy path works
- [ ] Edge cases handled
- [ ] Error handling implemented

### Design Fidelity
- [ ] UI match với design
- [ ] Responsive behavior correct
- [ ] Animations/transitions đúng
- [ ] No visual bugs

### Code Quality
- [ ] Code review passed
- [ ] No console errors
- [ ] Performance acceptable
- [ ] Security considerations addressed

---

## 5. QA → Release Checklist

Trước khi release:

### Testing
- [ ] All test cases passed
- [ ] Regression testing done
- [ ] Cross-browser testing (nếu web)
- [ ] Cross-device testing (nếu mobile)
- [ ] Performance testing passed

### Documentation
- [ ] Help docs updated (nếu cần)
- [ ] Release notes ready
- [ ] Internal announcement prepared
- [ ] Support team briefed

### Monitoring
- [ ] Analytics tracking implemented
- [ ] Error monitoring setup
- [ ] Success metrics dashboard ready
- [ ] Rollback plan documented

### Final Approval
- [ ] Staging sign-off
- [ ] Product Owner approval
- [ ] Ready to deploy

---

## 6. Post-Release Checklist

Sau khi release:

### Immediate (Day 1)
- [ ] Verify deployment successful
- [ ] Check error rates
- [ ] Monitor key metrics
- [ ] Address critical bugs (nếu có)

### Short-term (Week 1)
- [ ] Collect user feedback
- [ ] Review analytics data
- [ ] Document learnings
- [ ] Plan iterations (nếu cần)

### Long-term (Month 1)
- [ ] Measure against success metrics
- [ ] Compile case study
- [ ] Share learnings với team
- [ ] Close Linear project

---

## Quick Review Template

```markdown
## Feature: [Tên Feature]
## Phase: [Discovery/Definition/Design/Dev/QA/Release]
## Date: [Date]
## Reviewer: [Tên]

### Checklist Score
- Completed: [X]/[Total]
- Blocked: [List blockers]

### Notes
[Ghi chú quan trọng]

### Decision
- [ ] Approved to proceed
- [ ] Needs revision: [List items]
- [ ] Blocked: [Reason]
```
