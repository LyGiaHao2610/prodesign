# Bối cảnh Sản phẩm - VÍ DỤ

> **Đây là file ví dụ đã điền đầy đủ.** Copy nội dung này vào `boi-canh-san-pham.md` và chỉnh sửa theo sản phẩm của bạn.

---

## Tổng quan Sản phẩm

**Tên sản phẩm**: MoneyWise

**Mô tả ngắn**: Ứng dụng quản lý tài chính cá nhân giúp người dùng theo dõi chi tiêu, lập ngân sách và đạt mục tiêu tiết kiệm.

**Vấn đề Giải quyết**: Người Việt trẻ (25-35 tuổi) thường không biết tiền đi đâu mỗi tháng, khó kiểm soát chi tiêu và không có thói quen tiết kiệm. Các app hiện tại quá phức tạp hoặc không phù hợp văn hóa Việt Nam.

**Người dùng Mục tiêu**: Người đi làm văn phòng 25-35 tuổi tại các thành phố lớn (HCM, Hà Nội, Đà Nẵng), thu nhập 15-50 triệu/tháng, sử dụng smartphone hàng ngày.

---

## Tầm nhìn & Chiến lược

**Tầm nhìn**: Trở thành ứng dụng quản lý tài chính cá nhân #1 Việt Nam với 5 triệu người dùng vào năm 2028.

**Sứ mệnh**: Giúp mỗi người Việt làm chủ tài chính cá nhân một cách đơn giản và thông minh.

**Điểm Khác biệt**: 
- AI tự động phân loại chi tiêu từ SMS/notification ngân hàng
- Giao diện đơn giản, Việt hóa 100%, phù hợp văn hóa chi tiêu Việt
- Tích hợp sẵn các danh mục phổ biến tại VN (tiền nhà, grab, cafe, bún phở...)
- Không cần nhập tay - sync tự động với ngân hàng

---

## Chân dung Người dùng

### Người dùng Chính: Minh - Nhân viên văn phòng

- **Là ai**: Nam, 28 tuổi, nhân viên marketing tại công ty FMCG, lương 20 triệu/tháng
- **Mục tiêu**: 
  - Biết mình tiêu bao nhiêu mỗi tháng vào đâu
  - Tiết kiệm được 5 triệu/tháng để mua xe
  - Không bị "cháy túi" cuối tháng
- **Điểm đau**: 
  - Hay quên ghi chép, các app yêu cầu nhập tay quá nhiều
  - Không biết mình tiêu bao nhiêu cho cafe/grab mỗi tháng
  - Cuối tháng thường hết tiền dù lương không thấp
- **Hành vi**: 
  - Dùng iPhone, thanh toán chủ yếu qua Momo/chuyển khoản
  - Check app 1-2 lần/ngày, mỗi lần 2-3 phút
  - Thích nhận notification nhắc nhở

### Người dùng Phụ: Linh - Freelancer

- **Là ai**: Nữ, 32 tuổi, designer freelance, thu nhập không ổn định 25-40 triệu/tháng
- **Mục tiêu**: 
  - Quản lý dòng tiền khi thu nhập bất ổn
  - Tách biệt chi phí cá nhân và công việc
- **Điểm đau**: 
  - Khó lập ngân sách khi thu nhập thay đổi
  - Hay quên invoice khách hàng chưa thanh toán

---

## Tính năng Chính

| Tính năng | Trạng thái | Ưu tiên |
|-----------|------------|---------|
| Sync SMS ngân hàng tự động | Đã có | P0 |
| Dashboard tổng quan chi tiêu | Đã có | P0 |
| Phân loại chi tiêu bằng AI | Đã có | P0 |
| Lập ngân sách theo danh mục | Đã có | P0 |
| Mục tiêu tiết kiệm | Đang làm | P1 |
| Báo cáo hàng tuần/tháng | Đang làm | P1 |
| Nhắc nhở hóa đơn định kỳ | Kế hoạch | P2 |
| Chia sẻ ngân sách gia đình | Kế hoạch | P2 |
| Tích hợp đầu tư (chứng khoán, vàng) | Kế hoạch | P3 |

---

## Chỉ số Thành công

| Chỉ số | Hiện tại | Mục tiêu Q2/2026 | 
|--------|----------|------------------|
| MAU (Monthly Active Users) | 50,000 | 150,000 |
| DAU/MAU (Stickiness) | 25% | 40% |
| D7 Retention | 35% | 50% |
| D30 Retention | 15% | 25% |
| NPS Score | 32 | 50 |
| Avg. Session Duration | 2.5 phút | 4 phút |
| Transactions synced/user/month | 45 | 80 |

---

## Bối cảnh Cạnh tranh

| Đối thủ | Điểm mạnh | Lợi thế Chúng ta |
|---------|-----------|------------------|
| Money Lover | Lâu đời, nhiều user, đa nền tảng | UX đơn giản hơn, sync tự động |
| Misa | Tích hợp kế toán doanh nghiệp | Focus cá nhân, không quá phức tạp |
| Sổ Thu Chi | Miễn phí, nhẹ | AI phân loại, không cần nhập tay |
| Mint (Mỹ) | Tính năng đầy đủ | Việt hóa, hiểu thói quen VN |

---

## Ràng buộc & Phụ thuộc

**Kỹ thuật**:
- Phụ thuộc vào SMS permission (Android) và Notification access
- Cần maintain AI model cho từng ngân hàng VN (30+ banks)
- GDPR-like compliance cho dữ liệu tài chính

**Kinh doanh**:
- Freemium model: Miễn phí basic, Premium 49k/tháng
- Không bán dữ liệu người dùng (cam kết privacy)
- Cần partnership với ngân hàng cho Open Banking API (2026+)

**Pháp lý**:
- Tuân thủ Nghị định 13/2023/NĐ-CP về bảo vệ dữ liệu cá nhân
- Không lưu trữ thông tin thẻ/tài khoản ngân hàng
- Cần đăng ký với Bộ Công Thương nếu có tính năng thanh toán

---

*Cập nhật lần cuối: 05/01/2026*

