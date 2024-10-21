# Hướng dẫn cài đặt Windows và Ubuntu

Script này giúp bạn cài đặt các công cụ cần thiết và tải xuống trình cài đặt cho Windows và Ubuntu.

## Cách sử dụng

1. Tải xuống file `setup.sh` từ repository này.

2. Mở terminal và di chuyển đến thư mục chứa file `setup.sh`.

3. Cấp quyền thực thi cho script:
   ```
   chmod +x setup.sh
   ```

4. Chạy script với quyền sudo:
   ```
   sudo ./setup.sh
   ```

5. Script sẽ tự động kiểm tra và cài đặt các công cụ cần thiết, sau đó tải xuống và chạy trình cài đặt TinyInstaller với license key đã được cung cấp.

## Lưu ý

- Script này yêu cầu quyền root để chạy.
- Đảm bảo bạn có kết nối internet ổn định trong quá trình chạy script.
- License key đã được tích hợp sẵn trong script và sẽ được tự động truyền vào TinyInstaller.
- Nếu gặp bất kỳ vấn đề nào, vui lòng kiểm tra các thông báo lỗi và đảm bảo rằng tất cả các điều kiện tiên quyết đều được đáp ứng.
- Đảm bảo rằng bạn đã cấp quyền thực thi cho script trước khi chạy (bước 3 trong hướng dẫn sử dụng).

## Xử lý lỗi

- Nếu script không thể tải xuống TinyInstaller, hãy kiểm tra kết nối internet của bạn và thử lại.
- Nếu bạn gặp vấn đề với license key, vui lòng liên hệ với quản trị viên để được hỗ trợ.
- Nếu bạn gặp lỗi "Permission denied" khi chạy script, hãy đảm bảo rằng bạn đã cấp quyền thực thi cho script (bước 3 trong hướng dẫn sử dụng).

## Hỗ trợ

Nếu bạn gặp bất kỳ vấn đề nào hoặc có câu hỏi, vui lòng tạo một issue trong repository này.
