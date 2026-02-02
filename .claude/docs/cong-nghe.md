# Công nghệ Sử dụng

> **Hướng dẫn**: Điền stack công nghệ của dự án. Claude sẽ tham khảo file này khi viết code.

## Frontend

### Cốt lõi
| Công nghệ | Phiên bản | Mục đích |
|-----------|-----------|----------|
| React | 18.x | Framework giao diện |
| TypeScript | 5.x | Kiểm tra kiểu |
| Tailwind CSS | 3.x | Styling |
| Vite | 5.x | Công cụ build |

### Quản lý State
| Công nghệ | Mục đích |
|-----------|----------|
| React Context | State toàn cục đơn giản |
| Zustand | State phức tạp (nếu cần) |
| TanStack Query | State server, caching |

### Form & Kiểm tra
| Công nghệ | Mục đích |
|-----------|----------|
| React Hook Form | Xử lý form |
| Zod | Kiểm tra schema |

### Components Giao diện
| Công nghệ | Mục đích |
|-----------|----------|
| Radix UI | Components headless |
| Lucide React | Icons |

### Kiểm thử
| Công nghệ | Mục đích |
|-----------|----------|
| Vitest | Unit testing |
| React Testing Library | Component testing |
| Playwright | E2E testing |

---

## Backend (nếu có)

| Công nghệ | Mục đích |
|-----------|----------|
| [Công nghệ] | [Mục đích] |

---

## Hạ tầng

| Dịch vụ | Mục đích |
|---------|----------|
| [Dịch vụ] | [Mục đích] |

---

## Công cụ Phát triển

| Công cụ | Mục đích |
|---------|----------|
| ESLint | Kiểm tra code |
| Prettier | Định dạng code |
| Husky | Git hooks |
| lint-staged | Kiểm tra trước commit |

---

## Quy ước Code

### Đặt tên File
- Components: `TenComponent.tsx` (ví dụ: `TheNguoiDung.tsx`)
- Hooks: `useTenHook.ts` (ví dụ: `useDangNhap.ts`)
- Tiện ích: `tenTienIch.ts` (ví dụ: `dinhDangNgay.ts`)
- Types: `types.ts` hoặc `*.types.ts`
- Hằng số: `hangSo.ts` với `TEN_HANG_SO`

### Cấu trúc Thư mục
```
src/
├── components/
│   ├── ui/           # Components cơ bản
│   └── tinh-nang/    # Components theo tính năng
├── hooks/            # Custom hooks
├── lib/              # Tiện ích
├── types/            # Định nghĩa kiểu
├── pages/            # Components trang
├── services/         # Dịch vụ API
└── stores/           # State stores
```

### Thứ tự Import
```typescript
// 1. React
import { useState, useEffect } from 'react';

// 2. Thư viện bên ngoài
import { useQuery } from '@tanstack/react-query';

// 3. Components nội bộ
import { NutBam } from '@/components/ui';

// 4. Tiện ích nội bộ
import { cn } from '@/lib/utils';

// 5. Kiểu
import type { NguoiDung } from '@/types';

// 6. Styles (nếu có)
import './styles.css';
```

### Cấu trúc Component
```typescript
// 1. Kiểu/Interfaces
interface Props { ... }

// 2. Hằng số
const SO_MOI_TRANG = 10;

// 3. Component
export function Component({ prop }: Props) {
  // 3a. Hooks
  const [state, setState] = useState();
  
  // 3b. State phái sinh
  const computed = useMemo(() => ..., []);
  
  // 3c. Effects
  useEffect(() => { ... }, []);
  
  // 3d. Xử lý sự kiện
  const xuLyBam = () => { ... };
  
  // 3e. Render
  return ( ... );
}
```

---

## Quy ước API

### Endpoints
- Đặt tên RESTful: `/api/nguoi-dung`, `/api/nguoi-dung/:id`
- Danh từ số nhiều cho collections
- Phương thức HTTP: GET, POST, PUT, PATCH, DELETE

### Định dạng Phản hồi
```typescript
// Thành công
{
  duLieu: T,
  meta?: { phanTrang, ... }
}

// Lỗi
{
  loi: {
    ma: string,
    thongBao: string,
    chiTiet?: any
  }
}
```

---

## Quy ước Git

### Đặt tên Nhánh
- Tính năng: `tinh-nang/[ma-ticket]-mo-ta-ngan`
- Sửa lỗi: `sua-loi/[ma-ticket]-mo-ta-ngan`
- Khẩn cấp: `khan-cap/[ma-ticket]-mo-ta-ngan`

### Thông điệp Commit
```
loai(pham-vi): mô tả

[nội dung tùy chọn]

[footer tùy chọn]
```

Loại: `tinh-nang`, `sua-loi`, `tai-lieu`, `style`, `refactor`, `test`, `chore`

---

*Cập nhật lần cuối: [Ngày]*
