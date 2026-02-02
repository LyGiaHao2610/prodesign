---
mo-ta: Hỏi về sản phẩm - AI trả lời dựa trên context đã có
---

# Lệnh /ask

Hỏi bất cứ điều gì về sản phẩm, AI sẽ trả lời dựa trên context.

## Khi nào Dùng

- Khi cần đề xuất tính năng mới
- Khi cần hướng đi cho sản phẩm
- Khi cần phân tích vấn đề
- Khi cần brainstorm ideas

## Cách dùng

```
/ask [câu hỏi của bạn]
```

## Các Loại Câu hỏi

### 🚀 Đề xuất Tính năng

```
/ask Để tăng retention, tôi cần làm tính năng gì?
/ask Tính năng nào sẽ giúp tăng user mới?
/ask Đối thủ có gì mà mình chưa có?
```

**AI sẽ:**
- Phân tích persona và pain points
- Tham khảo đối thủ cạnh tranh
- Đề xuất tính năng với lý do
- Ưu tiên theo impact/effort

### 📊 Phân tích Vấn đề

```
/ask Tại sao user bỏ app sau 7 ngày?
/ask Chỗ nào trong luồng onboarding có vấn đề?
/ask Tính năng nào đang underperform?
```

**AI sẽ:**
- Dựa trên UX principles
- Phân tích luồng người dùng
- Đề xuất giả thuyết và cách validate

### 🎯 Định hướng Sản phẩm

```
/ask Nên focus vào B2B hay B2C?
/ask Có nên thêm tính năng social không?
/ask Pricing strategy nào phù hợp?
```

**AI sẽ:**
- Phân tích dựa trên persona
- So sánh với đối thủ
- Đưa ra pros/cons của mỗi hướng

### 💡 Brainstorm

```
/ask Có idea gì cho tính năng gamification?
/ask Làm sao để viral?
/ask Monetization options?
```

**AI sẽ:**
- Đưa ra nhiều ideas
- Liên kết với product context
- Gợi ý cách validate nhanh

## Output Format

```markdown
## 💡 [Câu hỏi của bạn]

### Phân tích

Dựa trên:
- **Sản phẩm**: [Tên] - [Mô tả]
- **Người dùng**: [Persona]
- **Giai đoạn**: [MVP/Growth/Scale]
- **Đối thủ**: [List]

### Đề xuất

#### Option 1: [Tên]
- **Mô tả**: ...
- **Impact**: Cao/TB/Thấp
- **Effort**: Cao/TB/Thấp
- **Lý do phù hợp**: ...

#### Option 2: [Tên]
...

### Khuyến nghị

Tôi đề xuất **[Option X]** vì:
1. [Lý do 1]
2. [Lý do 2]

### Bước tiếp theo

1. [ ] [Action 1]
2. [ ] [Action 2]
```

## Ví dụ

```
Người dùng: /ask Để tăng user mới, tôi nên làm tính năng gì?

Claude: 
## 💡 Tính năng để Tăng User Mới

### Phân tích

Dựa trên context của MoneyWise:
- **Người dùng mục tiêu**: Người đi làm 25-35 tuổi
- **Vấn đề**: Khó theo dõi chi tiêu
- **Đối thủ**: Money Lover (có referral), Misa (có social)
- **USP**: AI tự động phân loại

### Đề xuất

#### Option 1: Referral Program
- **Impact**: Cao - viral loop
- **Effort**: Trung bình - 2 sprints
- **Lý do**: Money Lover đã chứng minh hiệu quả

#### Option 2: Social Challenge
- **Impact**: Cao - engagement + acquisition
- **Effort**: Cao - 4 sprints
- **Lý do**: Gen Z thích gamification

#### Option 3: Financial Health Score
- **Impact**: Trung bình - shareable
- **Effort**: Thấp - 1 sprint
- **Lý do**: Dễ share, tạo FOMO

### Khuyến nghị

Với giai đoạn MVP, tôi đề xuất **Option 3** (Financial Health Score) vì:
1. Effort thấp, có thể ship nhanh
2. Kết quả shareable → organic growth
3. Validate được trước khi làm referral phức tạp

### Bước tiếp theo

1. [ ] Viết PRD cho Financial Health Score
2. [ ] Design màn hình kết quả + share
3. [ ] Implement trong 1 sprint
4. [ ] A/B test share rate

Bạn muốn tôi viết PRD chi tiết cho option này không?
```

## Lưu ý

- Luôn đọc context từ `.claude/docs/` trước khi trả lời
- Nếu thiếu context, hỏi người dùng bổ sung
- Liên kết câu trả lời với persona và goals của sản phẩm
- Đề xuất bước tiếp theo cụ thể

