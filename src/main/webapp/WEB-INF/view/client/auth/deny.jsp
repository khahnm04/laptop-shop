<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

      <!DOCTYPE html>
      <html lang="vi">

      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>403 - Truy cập bị từ chối</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap"
          rel="stylesheet">
        <style>
          :root {
            --primary-color: #6C63FF;
            --danger-color: #FF4D4D;
            --dark-color: #2F2E41;
            --light-color: #F9F9FF;
          }

          * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
          }

          body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            color: var(--dark-color);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            overflow-x: hidden;
          }

          .particle {
            position: absolute;
            background-color: rgba(108, 99, 255, 0.1);
            border-radius: 50%;
            z-index: -1;
          }

          .error-container {
            max-width: 800px;
            width: 100%;
            padding: 3rem;
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            text-align: center;
            position: relative;
            overflow: hidden;
            border: 1px solid rgba(255, 255, 255, 0.3);
          }

          .error-container::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(108, 99, 255, 0.1) 0%, rgba(255, 255, 255, 0) 70%);
            z-index: -1;
            animation: rotate 20s linear infinite;
          }

          .lock-icon {
            font-size: 6rem;
            margin-bottom: 1.5rem;
            color: var(--danger-color);
            display: inline-block;
            animation: bounce 2s infinite;
          }

          h1 {
            font-size: 6rem;
            margin: 0;
            background: linear-gradient(45deg, var(--danger-color), #FF8E53);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            line-height: 1;
            margin-bottom: 0.5rem;
          }

          h2 {
            font-size: 2.2rem;
            margin-bottom: 1rem;
            color: var(--dark-color);
            font-weight: 600;
          }

          p {
            font-size: 1.2rem;
            line-height: 1.8;
            margin-bottom: 2.5rem;
            color: #666;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
          }

          .home-button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 1rem 2.5rem;
            background: linear-gradient(45deg, var(--primary-color), #8A78FF);
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            font-size: 1.1rem;
            transition: all 0.3s ease;
            box-shadow: 0 10px 20px rgba(108, 99, 255, 0.3);
            position: relative;
            overflow: hidden;
            border: none;
            cursor: pointer;
          }

          .home-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 25px rgba(108, 99, 255, 0.4);
          }

          .home-button:active {
            transform: translateY(1px);
          }

          .home-button::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: 0.5s;
          }

          .home-button:hover::before {
            left: 100%;
          }

          .error-details {
            margin-top: 2rem;
            padding: 1rem;
            background-color: rgba(255, 77, 77, 0.1);
            border-radius: 10px;
            font-size: 0.9rem;
            color: #666;
            display: inline-block;
          }

          @keyframes rotate {
            0% {
              transform: rotate(0deg);
            }

            100% {
              transform: rotate(360deg);
            }
          }

          @keyframes bounce {

            0%,
            20%,
            50%,
            80%,
            100% {
              transform: translateY(0);
            }

            40% {
              transform: translateY(-20px);
            }

            60% {
              transform: translateY(-10px);
            }
          }

          @media (max-width: 768px) {
            .error-container {
              padding: 2rem 1.5rem;
            }

            h1 {
              font-size: 4rem;
            }

            h2 {
              font-size: 1.8rem;
            }

            p {
              font-size: 1rem;
            }
          }
        </style>
      </head>

      <body>
        <div class="error-container animate__animated animate__fadeIn">
          <div class="lock-icon">🔒</div>
          <h1>403</h1>
          <h2>Truy cập bị từ chối</h2>
          <p>Xin lỗi, bạn không có quyền truy cập vào tài nguyên này. Nếu bạn cho rằng đây là lỗi hệ thống, vui lòng
            liên hệ với bộ phận hỗ trợ.</p>
          <a href="/" class="home-button animate__animated animate__pulse animate__infinite animate__slower">
            <span>Quay lại trang chủ</span>
          </a>
          <div class="error-details animate__animated animate__fadeInUp animate__delay-1s">
            Lỗi 403 - Forbidden | Truy cập bị từ chối
          </div>
        </div>

        <script>
          // Tạo hiệu ứng particle
          function createParticles() {
            const colors = ['rgba(108, 99, 255, 0.2)', 'rgba(255, 77, 77, 0.2)', 'rgba(75, 192, 192, 0.2)'];

            for (let i = 0; i < 15; i++) {
              const particle = document.createElement('div');
              particle.classList.add('particle');

              // Kích thước ngẫu nhiên
              const size = Math.random() * 100 + 50;
              particle.style.width = `${size}px`;
              particle.style.height = `${size}px`;

              // Vị trí ngẫu nhiên
              particle.style.left = `${Math.random() * 100}vw`;
              particle.style.top = `${Math.random() * 100}vh`;

              // Màu ngẫu nhiên
              particle.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];

              // Hiệu ứng di chuyển
              const duration = Math.random() * 20 + 10;
              particle.style.animation = `float ${duration}s linear infinite`;

              document.body.appendChild(particle);
            }
          }

          // Thêm animation float cho particle
          const style = document.createElement('style');
          style.innerHTML = `
            @keyframes float {
                0% {
                    transform: translate(0, 0) rotate(0deg);
                    opacity: 1;
                }
                100% {
                    transform: translate(${Math.random() * 200 - 100}px, ${Math.random() * 200 - 100}px) rotate(360deg);
                    opacity: 0;
                }
            }
        `;
          document.head.appendChild(style);

          // Khởi tạo particle khi trang load
          window.addEventListener('load', createParticles);
        </script>
      </body>

      </html>