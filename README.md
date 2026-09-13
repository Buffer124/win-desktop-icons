# win-desktop-icons

# Windows Desktop Icons Restorer

Script PowerShell tự động đưa các biểu tượng hệ thống (This PC, User's Files, Network, Control Panel, Recycle Bin) ra màn hình chính trên Windows 10 và 11.

### Cách sử dụng
Mở **PowerShell** và dán dòng lệnh sau:

```powershell
irm [https://raw.githubusercontent.com/Buffer124/win-desktop-icons/refs/heads/main/show-icons.ps1](https://raw.githubusercontent.com/Buffer124/win-desktop-icons/refs/heads/main/show-icons.ps1) | iex

Cách 1: Lệnh ngắn gọn (khuyên dùng trên Windows 10 & 11)

irm https://raw.githubusercontent.com/Buffer124/win-desktop-icons/refs/heads/main/show-icons.ps1 | iex

        irm là viết tắt của Invoke-RestMethod (tải nội dung script về RAM).
        iex là viết tắt của Invoke-Expression (thực thi đoạn mã vừa tải).

Cách 2: Lệnh đầy đủ (phòng trường hợp máy bị giới hạn ExecutionPolicy)

    Nếu máy báo lỗi không cho chạy script (Execution_Policies), bạn dùng lệnh này:

powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Buffer124/win-desktop-icons/refs/heads/main/show-icons.ps1 | iex"
