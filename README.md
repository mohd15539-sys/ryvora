# Ryvora AE

Online inventory platform for offline products. Admins and Super Admins manage products; visitors can view the catalog without an account.

## About the Project

Ryvora AE is a simple inventory backend and API:

- **Super Admins** log in, create and manage **Admins**, and manage products and categories.
- **Admins** log in and manage products and categories.
- **Visitors** can view active products and categories via public APIs (no login).

There is no public user registration; only Super Admin and Admin roles exist.

## Key Features

- JWT authentication for Super Admin and Admin
- Super Admin can create Admins (via API and Django Admin)
- Product and category CRUD (Admin / Super Admin)
- Public read-only product and category listing for visitors
- Product images: local storage in development, AWS S3 in production
- PostgreSQL: local for development, Amazon RDS for production (configured via environment)

## Repository Structure

- **`/client`**: React frontend (Vite, Tailwind, etc.)
- **`/server`**: Django REST API (Ryvora AE backend)
- **`/docs`**: API, setup, deployment, and authentication documentation

## Technology Stack

### Backend (Server)

- Django 5.0 with Django REST Framework
- PostgreSQL (local or Amazon RDS)
- JWT (SimpleJWT) for authentication
- AWS S3 for media in production
- django-storages, Pillow for images

### Frontend (Client)

- React 18 with Vite
- Tailwind CSS, Radix UI
- Axios for API calls

## Getting Started

1. **Server:** See [docs/SETUP.md](docs/SETUP.md) for environment, database, and running the API.
2. **Create first Super Admin:**  
   `cd server && python manage.py createsuperadmin --email=admin@example.com --name="Super Admin" --password=yourpassword`
3. **API docs:** [docs/API.md](docs/API.md)  
4. **Auth details:** [docs/AUTHENTICATION.md](docs/AUTHENTICATION.md)  
5. **Deployment:** [docs/DEPLOYMENT.md](docs/DEPLOYMENT.md)

## Environment Variables

See `server/.env.example` for required variables. Main ones:

- `SECRET_KEY`, `POSTGRES_*` (database)
- For production: `AWS_*` (S3), `ENVIRONMENT=PROD`

## Requirements

- Python 3.10+ (server)
- Node.js 18+ (client)
- PostgreSQL
- (Production) AWS S3 and optionally Amazon RDS

## License

Proprietary – All rights reserved.
