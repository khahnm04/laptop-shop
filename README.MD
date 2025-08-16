# 🚀 LaptopShop - Java Spring MVC

├── .gitignore
├── .mvn
    └── wrapper
    │   ├── maven-wrapper.jar
    │   └── maven-wrapper.properties
├── README.MD
├── mvnw
├── mvnw.cmd
├── pom.xml
└── src
    ├── main
        ├── java
        │   └── com
        │   │   └── projects
        │   │       └── laptopshop
        │   │           ├── LaptopShopApplication.java
        │   │           ├── config
        │   │               ├── CustomSuccessHandler.java
        │   │               ├── SecurityConfiguration.java
        │   │               └── WebMvcConfig.java
        │   │           ├── controller
        │   │               ├── admin
        │   │               │   ├── DashboardController.java
        │   │               │   ├── OrderController.java
        │   │               │   ├── ProductController.java
        │   │               │   └── UserController.java
        │   │               └── client
        │   │               │   ├── HomePageController.java
        │   │               │   └── ItemController.java
        │   │           ├── domain
        │   │               ├── Order.java
        │   │               ├── OrderDetail.java
        │   │               ├── Product.java
        │   │               ├── Role.java
        │   │               ├── User.java
        │   │               └── dto
        │   │               │   └── RegisterDTO.java
        │   │           ├── repository
        │   │               ├── ProductRepository.java
        │   │               ├── RoleRepository.java
        │   │               └── UserRepository.java
        │   │           └── service
        │   │               ├── CustomUserDetailsService.java
        │   │               ├── ProductService.java
        │   │               ├── UploadService.java
        │   │               ├── UserService.java
        │   │               └── validator
        │   │                   ├── RegisterChecked.java
        │   │                   ├── RegisterValidator.java
        │   │                   ├── StrongPassword.java
        │   │                   └── StrongPasswordValidator.java
        ├── resources
        │   └── application.properties
        └── webapp
        │   ├── WEB-INF
        │       └── view
        │       │   ├── admin
        │       │       ├── dashboard
        │       │       ├── layout
        │       │       ├── order
        │       │       ├── product
        │       │       └── user
        │       │   ├── client
        │       │       ├── auth
        │       │       ├── homepage
        │       │       ├── layout
        │       │       └── product
        │   └── resources
        │       ├── admin
        │           ├── css
        │           ├── images
        │           └── js
        │       └── client
        │           ├── css
        │           ├── img
        │           ├── js
        │           └── lib
    └── test
