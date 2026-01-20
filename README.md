# CredPal Assessment (Flutter)

This project is a Flutter UI implementation based on the provided Figma design.
The focus of this implementation is pixel accuracy, responsiveness and clean UI architecture.

---

## Platforms Supported
- Android
- iOS
- Web (Responsive)

---

## Tech Stack
- Flutter (Stable)
- flutter_screenutil (responsive sizing)
- SVG assets
- Custom typography & theme system

---

## Project Structure

lib/
├── core/
│   ├── constants/
│   ├── theme/
│   └── utils/
├── features/
│   └── home/
│       ├── data/
│       │   ├── mocks/
│       │   └── models/
│       └── presentation/
│           ├── pages/
│           └── widgets/
└── main.dart

---

## How to Run

### 1. Clone the repository

git clone https://github.com/sayo-dev/cred-pal.git
cd cred-pal

### 2. Install Dependencies

flutter pub get

### 3. Run the project

Web - flutter run -d chrome
Android/iOS - flutter run 
