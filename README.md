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

lib/
├── core/ # Common utilities, constants, themes, etc.
├── features/ # Feature-based module separation
│ ├── auth/ # User authentication (login/signup)
│ │ ├── domain/ # Entities & repositories (abstract layer)
│ │ ├── data/ # DTOs, data sources, repository impl.
│ │ └── presentation/ # Screens, widgets, and UI logic
│ ├── blog/ # Blog operations (title + content CRUD)
│ │ ├── domain/ # Blog entity & blog repository
│ │ ├── data/ # Blog model & data source
│ │ └── presentation/ # UI: blog list, create/edit screens
├── di/ # Dependency injection setup using GetIt
└── main.dart # App entry point


📌 Highlights :

✅ Follows clean, scalable, testable architecture

✅ Uses real-time backend services with user authentication

✅ Built with professional coding standards

✅ Easy to maintain and extend with DI & modular structure


