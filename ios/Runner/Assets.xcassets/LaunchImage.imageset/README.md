# Quroz

Quroz is a **Flutter application** built to showcase a clean, scalable, and maintainable project structure.  
The app follows **Clean Architecture** principles to ensure a clear separation of concerns between the UI, business logic, and data layers.

---

## 🏗️ Architecture

The project is organized into distinct layers, each with a specific responsibility.  
This structure helps in creating a **modular, testable, and maintainable** codebase.

```

lib/
├── core/
│   ├── assets/
│   │   ├── colors/
│   │   ├── fonts/
│   │   ├── icons/
│   │   └── app\_icons.dart
│   ├── common/
│   │   └── widgets/
│   │       └── svg\_icon.dart
│   ├── errors/
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   └── usecase/
│       └── usecase.dart
├── features/
│   ├── account/
│   │   └── presentation/...
│   ├── activity/
│   │   └── presentation/...
│   ├── explore/
│   │   └── presentation/...
│   ├── global\_search/
│   │   └── presentation/...
│   └── marketplace/
│       ├── data/
│       │   ├── datasources/
│       │   ├── models/
│       │   └── repositories/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/
│       │   └── usecase/
│       └── presentation/
│           ├── bloc/
│           ├── pages/
│           └── widgets/
├── main.dart
└── pubspec.yaml

````

---

# 📂 Layer Responsibilities

### 1. Presentation Layer
Located at `lib/features/<feature_name>/presentation`.  
Contains all the **UI code**, including:
- Pages
- Widgets
- State management (BLoC)

Responsible for **what the user sees and interacts with**.

---

### 2. Domain Layer
Located at `lib/features/<feature_name>/domain`.  
This is the **core of the application** and contains:
- Business logic
- Entities (data models)
- Repository contracts
- Use cases

⚡ This layer has **no knowledge** of UI or data sources.

---

### 3. Data Layer
Located at `lib/features/<feature_name>/data`.  
Responsible for:
- Fetching data from **external sources** (APIs, databases, etc.)
- Converting raw data into **domain entities**

---

## 🚀 Tech Stack

- **[go_router](https://pub.dev/packages/go_router)** → Robust, declarative navigation  
- **[flutter_dotenv](https://pub.dev/packages/flutter_dotenv)** → Manage environment variables  
- **BLoC** → State management  
- **Clean Architecture** → Scalable project structure  

---

## 🛠️ Getting Started

Follow these steps to run the project:

### 1. Clone the repository
```bash
git clone [repository_url]
cd [your_project_name]
````

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Set up environment variables

Create a `.env` file in the root directory and add the base API URL:

```
BASE_URL=https://staging1.hashfame.com/api/v1/
```

### 4. Run the app

```bash
flutter run
```

---

## ✨ Key Features

* 📱 **Responsive Design**: Adapts seamlessly to different screen sizes.
* 🏠 **Home Navigation**: Functional bottom navigation bar for smooth transitions.
* 🌐 **API Integration**: Marketplace section fetches data from API endpoints.
* 📊 **Structured Data Handling**: Models and repositories ensure clean and consistent data flow.

---

## 📸 Screenshots

### Marketplace Listing

![Marketplace](screenshots/sc1.png)

### Single Post View

![Single Post](screenshots/sc2.png)

---

## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

```

👉 You’ll just need to add your **repo URL** and **screenshot images** in `screenshots/`.  

Do you want me to also add **badges** (Flutter version, license, build status) at the top of the `README.md` for a professional look?