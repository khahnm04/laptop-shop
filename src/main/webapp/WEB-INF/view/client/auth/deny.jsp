<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

      <!DOCTYPE html>
      <html lang="vi">

      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>403 Forbidden - Truy cập bị từ chối</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
        <style>
          :root {
            --color-primary: #4361ee;
            --color-danger: #f72585;
            --color-warning: #f8961e;
            --color-success: #4cc9f0;
            --color-dark: #212529;
            --color-light: #f8f9fa;
            --color-gray: #6c757d;
            --gradient-primary: linear-gradient(135deg, #4361ee 0%, #3a0ca3 100%);
            --gradient-danger: linear-gradient(135deg, #f72585 0%, #b5179e 100%);
            --shadow-sm: 0 1px 3px rgba(0, 0, 0, 0.12);
            --shadow-md: 0 4px 6px rgba(0, 0, 0, 0.1);
            --shadow-lg: 0 10px 15px rgba(0, 0, 0, 0.1);
            --shadow-xl: 0 20px 25px rgba(0, 0, 0, 0.1);
            --transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
            --border-radius: 12px;
            --border-radius-lg: 16px;
            --spacing-unit: 1rem;
          }

          *,
          *::before,
          *::after {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
          }

          body {
            font-family: 'Inter', sans-serif;
            background-color: #f5f7ff;
            color: var(--color-dark);
            line-height: 1.6;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: var(--spacing-unit);
            position: relative;
            overflow-x: hidden;
          }

          .error-container {
            max-width: 800px;
            width: 100%;
            padding: calc(var(--spacing-unit) * 3);
            background-color: white;
            border-radius: var(--border-radius-lg);
            box-shadow: var(--shadow-xl);
            text-align: center;
            position: relative;
            z-index: 10;
            overflow: hidden;
          }

          .error-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 8px;
            background: var(--gradient-danger);
          }

          .error-icon {
            font-size: 6rem;
            margin-bottom: calc(var(--spacing-unit) * 1.5);
            color: var(--color-danger);
            position: relative;
            display: inline-block;
          }

          .error-icon::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 120%;
            height: 120%;
            background: rgba(247, 37, 133, 0.1);
            border-radius: 50%;
            z-index: -1;
          }

          h1.error-code {
            font-size: 6rem;
            font-weight: 700;
            margin-bottom: calc(var(--spacing-unit) * 0.5);
            background: var(--gradient-danger);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            line-height: 1;
          }

          h2.error-title {
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: calc(var(--spacing-unit) * 1.5);
            color: var(--color-dark);
          }

          p.error-message {
            font-size: 1.125rem;
            color: var(--color-gray);
            margin-bottom: calc(var(--spacing-unit) * 2);
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
          }

          .action-buttons {
            display: flex;
            justify-content: center;
            gap: var(--spacing-unit);
            margin-bottom: calc(var(--spacing-unit) * 2);
            flex-wrap: wrap;
          }

          .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: calc(var(--spacing-unit) * 0.75) calc(var(--spacing-unit) * 1.5);
            border-radius: var(--border-radius);
            font-weight: 500;
            text-decoration: none;
            transition: var(--transition);
            border: none;
            cursor: pointer;
            font-size: 1rem;
          }

          .btn-primary {
            background: var(--gradient-primary);
            color: white;
            box-shadow: var(--shadow-md);
          }

          .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
          }

          .btn-outline {
            background: transparent;
            color: var(--color-primary);
            border: 2px solid var(--color-primary);
          }

          .btn-outline:hover {
            background: rgba(67, 97, 238, 0.1);
          }

          .error-details {
            background-color: rgba(33, 37, 41, 0.05);
            padding: calc(var(--spacing-unit) * 0.75);
            border-radius: var(--border-radius);
            font-size: 0.875rem;
            color: var(--color-gray);
            display: inline-block;
          }

          .bg-shapes {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            overflow: hidden;
          }

          .shape {
            position: absolute;
            border-radius: 50%;
            opacity: 0.1;
          }

          .shape-1 {
            width: 300px;
            height: 300px;
            background: var(--color-primary);
            top: -100px;
            right: -100px;
          }

          .shape-2 {
            width: 200px;
            height: 200px;
            background: var(--color-danger);
            bottom: -50px;
            left: -50px;
          }

          .shape-3 {
            width: 150px;
            height: 150px;
            background: var(--color-warning);
            top: 50%;
            left: -75px;
          }

          @media (max-width: 768px) {
            .error-container {
              padding: calc(var(--spacing-unit) * 2);
            }

            h1.error-code {
              font-size: 4rem;
            }

            h2.error-title {
              font-size: 1.5rem;
            }

            p.error-message {
              font-size: 1rem;
            }

            .action-buttons {
              flex-direction: column;
              gap: calc(var(--spacing-unit) * 0.5);
            }

            .btn {
              width: 100%;
            }
          }

          /* Animation */
          @keyframes fadeIn {
            from {
              opacity: 0;
              transform: translateY(20px);
            }

            to {
              opacity: 1;
              transform: translateY(0);
            }
          }

          .animate-fade-in {
            animation: fadeIn 0.6s ease-out forwards;
          }

          .delay-1 {
            animation-delay: 0.2s;
          }

          .delay-2 {
            animation-delay: 0.4s;
          }

          .delay-3 {
            animation-delay: 0.6s;
          }
        </style>
      </head>

      <body>
        <div class="bg-shapes">
          <div class="shape shape-1"></div>
          <div class="shape shape-2"></div>
          <div class="shape shape-3"></div>
        </div>

        <div class="error-container">
          <div class="error-icon animate-fade-in">
            <i class="fas fa-ban"></i>
          </div>
          <h1 class="error-code animate-fade-in delay-1">403</h1>
          <h2 class="error-title animate-fade-in delay-1">Truy cập bị từ chối</h2>
          <p class="error-message animate-fade-in delay-2">
            Bạn không có quyền truy cập vào tài nguyên này. Điều này có thể do hạn chế về quyền hoặc yêu cầu xác thực.
          </p>

          <div class="action-buttons animate-fade-in delay-2">
            <a href="/" class="btn btn-primary">
              <i class="fas fa-home mr-2" style="margin-right: 5px;"></i> Trang chủ
            </a>
          </div>

          <div class="error-details animate-fade-in delay-3">
            <i class="fas fa-info-circle mr-1"></i> HTTP 403 Forbidden • <span id="current-date"></span>
          </div>
        </div>

        <script>
          // Hiển thị ngày tháng hiện tại
          document.getElementById('current-date').textContent = new Date().toLocaleDateString('vi-VN', {
            day: '2-digit',
            month: '2-digit',
            year: 'numeric'
          });

          // Thêm class animation khi trang load
          document.addEventListener('DOMContentLoaded', function () {
            const elements = document.querySelectorAll('.animate-fade-in');
            elements.forEach(el => {
              el.style.opacity = '0';
            });

            setTimeout(() => {
              elements.forEach(el => {
                el.style.opacity = '1';
              });
            }, 100);
          });
        </script>
      </body>

      </html>