# Stago (Scan. Take. Go.)

**Stago** is a smart campus package management system designed to simplify and streamline the package collection process using OCR, NLP, and QR code-based retrieval. Built with a **Flutter frontend**, a **Bun (TypeScript) backend**, and **Supabase** for authentication and database management.

---

## Features

### For Students:
-  View current and past packages
-  Request package collection
-  Receive and scan QR code tokens for easy pickup

### For Inventory Managers:
-  View incoming and pending packages
-  Automatic package scanning via OCR + NLP
-  Suggests optimal rack placement for storage
-  Mark packages as collected
-  Preload top 10 packages in the queue for faster service

---

## Tech Stack

| Layer         | Tech                     |
| ------------- | ------------------------ |
| Frontend      | Flutter                  |
| Backend       | Bun + TypeScript         |
| Database/Auth | Supabase (PostgreSQL + OAuth) |
| OCR/NLP       | Custom pipeline using vision and language models |
| Notifications | Email, push, and in-app alerts |

---

## Monorepo Structure

```
stago/
├── frontend/        # Flutter app for students and managers
├── backend/         # Bun server with OCR/NLP endpoints & logic
├── supabase/        # SQL schema, triggers, auth rules
├── shared/          # Common types and utilities
└── README.md
```

---

## Setup Instructions

### 1. Clone the repo

```bash
git clone https://github.com/YOUR_USERNAME/stago.git
cd stago
```

### 2. Set up Supabase

- Create a Supabase project and link it.
- Import the SQL schema from `supabase/schema.sql`.
- Set up OAuth and email templates.

### 3. Run Backend

```bash
cd backend
bun install
bun dev
```

### 4. Run Frontend

```bash
cd frontend
flutter pub get
flutter run
```

---

## Testing & QA

- Use feature branches off `dev`
- Submit PRs with clear descriptions
- PRs are reviewed and merged into `dev`
- `main` contains stable production code

---

## License

Licensed under the **GNU General Public License v3.0 (GPL-3.0).**  
This allows commercial and non-commercial use, as long as the source code remains open under the same license.

---

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you’d like to change.

---

Built with 💡 to make campus logistics smarter.