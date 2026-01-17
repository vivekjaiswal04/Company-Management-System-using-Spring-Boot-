# 🏢 Company Management System

✨ A **full-stack web application** built using **Spring Boot, Spring MVC, Hibernate (JPA), JSP, and MySQL** to manage company information along with **Developer** and **Testing departments** and their employees.

This project demonstrates **real-world enterprise concepts** like **nested data binding**, **One-to-One & One-to-Many relationships**, and **CRUD operations** using a clean MVC architecture.

---

## 🌟 Highlights

✅ Single-page registration for Company & Departments  
✅ Secure Login functionality  
✅ Preview page with hierarchical data  
✅ Edit Company, Departments, Developers & Testers  
✅ Delete Company with confirmation  
✅ JSP + JSTL `<c:forEach>` usage  
✅ Hibernate cascading & update handling  
✅ Clean UI with structured JSP pages  

---

## 🛠 Tech Stack

| Layer | Technology |
|------|-----------|
| Language | Java |
| Framework | Spring Boot |
| MVC | Spring MVC |
| ORM | Hibernate / JPA |
| View | JSP, JSTL |
| Database | MySQL |
| Build Tool | Maven |
| Server | Apache Tomcat |
| IDE | Eclipse / IntelliJ |

---

## 🧩 Application Modules

### 🏢 Company Module
- Company Name
- Location
- CEO Name
- Login Credentials

### 💻 Developer Department
- Department Name
- Project Name
- Developers List

### 🧪 Testing Department
- Department Name
- Testing Type
- Tools Used
- Testers List

---

## 🔗 Entity Relationships

- **Company**
  - One-to-One → DeveloperDept
  - One-to-One → TestingDept

- **DeveloperDept**
  - One-to-Many → Developers

- **TestingDept**
  - One-to-Many → Testers

---

## 📄 JSP Pages

| Page | Description |
|----|-----------|
| `register.jsp` | All-in-one registration page |
| `login.jsp` | User login |
| `preview.jsp` | Display company & department details |
| `edit.jsp` | Update company, departments & employees |

---

## 🔄 Application Flow

1️⃣ User registers company with departments  
2️⃣ User logs in using username & password  
3️⃣ Preview page displays full company structure  
4️⃣ User edits company or employees  
5️⃣ User deletes company if required  

---

## ⚙️ Configuration

### `application.properties`

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/company_db
spring.datasource.username=root
spring.datasource.password=your_password

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp
