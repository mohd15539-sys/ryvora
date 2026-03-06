# Gverify - Client Application

This directory contains the frontend React application for the Gverify Background Verification Platform.

## Tech Stack

- **React 18**: Core UI library
- **Vite**: Build tool and development server
- **TailwindCSS**: Utility-first CSS framework
- **Radix UI**: Accessible component primitives
- **React Router**: Navigation and routing
- **Axios**: API request handling
- **React PDF**: PDF generation and viewing

## Prerequisites

- Node.js 18.x or higher
- npm 9.x or higher

## Development Setup

1. **Install dependencies**

```bash
npm install
```

2. **Set up environment variables**

Create a `.env` file in the client directory:

```
VITE_API_URL=http://localhost:8000/api
```

For production, update the URL to your production API endpoint.

3. **Start the development server**

```bash
npm run dev
```

This will start the development server at `http://localhost:5173`.

## Available Scripts

- `npm run dev` - Start the development server
- `npm run build` - Build for production
- `npm run preview` - Preview the production build locally
- `npm run lint` - Run ESLint to check for code issues

## Project Structure

- `/src/assets` - Static assets like images and fonts
- `/src/components` - Reusable UI components
- `/src/constants` - Application constants and configurations
- `/src/hooks` - Custom React hooks
- `/src/lib` - Utility functions and helper libraries
- `/src/pages` - Top-level page components
- `/src/services` - API services and data fetching logic

## Building for Production

```bash
npm run build
```

This will create an optimized build in the `dist` directory.

## Deployment

The client application is configured for deployment to Vercel, as indicated by the `vercel.json` file. However, you can deploy to any static hosting service:

1. Build the project: `npm run build`
2. Deploy the contents of the `dist` directory to your hosting provider

## UI Components

The application uses a combination of:

- Radix UI for accessible component primitives
- TailwindCSS for styling
- Custom components in `/src/components`

## API Integration

API services are located in `/src/services` directory. The application communicates with the Django backend using Axios.

## Authentication

The application uses JWT token-based authentication, which is stored in local storage. JWT decoding is handled by the jwt-decode library.

## PDF Generation

The application includes PDF generation capabilities using @react-pdf/renderer for reports and documents.