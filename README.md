# 📝 Blog App

A production-grade **Flutter** application built using **Clean Architecture**, powered by **Supabase** for backend services and **GetIt** for dependency injection. This project simulates a real-world blogging platform with authentication and CRUD features.

---

## 🚀 Features

- 🔐 **User Authentication** (Sign Up / Login using Supabase)
- 📝 **Create, Read, Update, Delete (CRUD)** for blog posts
- ✨ **Clean Architecture** for scalable code structure
- ⚙️ **Dependency Injection** using GetIt
- ☁️ **Real-time Backend** with Supabase
- 📱 Responsive and modern UI built with Flutter

---

## 🧱 Tech Stack


| Layer                 | Technology       |
|-----------------------|------------------|
| Frontend              | Flutter          |
| Architecture Pattern  | Clean Architecture |
| Backend Services      | Supabase (Auth + DB) |
| Dependency Injection  | GetIt            |
| State Management      | Bloc |

---

## 📂 Project Structure :

<pre> ## 📂 Project Structure ``` lib/ ├── core/ # Common utilities and constants ├── features/ # Feature modules (auth, blog) │ ├── auth/ # Authentication logic │ │ ├── domain/ # Entities & repositories (abstract) │ │ ├── data/ # Models and Supabase auth datasource │ │ └── presentation/ # Screens and UI widgets (login/signup) │ ├── blog/ # Blog feature (title + content CRUD) │ │ ├── domain/ # Blog entity and repository contract │ │ ├── data/ # Blog model and Supabase integration │ │ └── presentation/ # Blog UI (create/edit/list) ├── di/ # Dependency Injection setup (GetIt) └── main.dart # App entry point ``` </pre>

📌 Highlights :

✅ Follows clean, scalable, testable architecture

✅ Uses real-time backend services with user authentication

✅ Built with professional coding standards

✅ Easy to maintain and extend with DI & modular structure


