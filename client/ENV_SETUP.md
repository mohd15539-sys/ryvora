# Environment Variables Setup for Vercel

## Required Environment Variable

Set this in Vercel Dashboard → Settings → Environment Variables:

| Variable Name | Production Value | Description |
|---------------|------------------|-------------|
| `VITE_BACKEND_BASE_URL` | `https://backend.ryvoraae.ae` | Backend API URL |

## How to Set in Vercel

### Via Dashboard (Recommended)

1. Go to [vercel.com/dashboard](https://vercel.com/dashboard)
2. Select your project (`ryvora-ae`)
3. Go to **Settings** → **Environment Variables**
4. Click **Add New**
5. Enter:
   - **Key:** `VITE_BACKEND_BASE_URL`
   - **Value:** `https://backend.ryvoraae.ae`
   - **Environment:** Select all (Production, Preview, Development)
6. Click **Save**
7. **Redeploy** your project for changes to take effect

### Via CLI

```bash
vercel env add VITE_BACKEND_BASE_URL production
# Enter: https://backend.ryvoraae.ae
```

## Important Notes

- Environment variables starting with `VITE_` are exposed to the browser
- After adding/updating variables, you must redeploy for changes to take effect
- The value should match your backend URL (check `docs/DOMAIN_SETUP.md`)

## Verify Setup

After deployment, check the browser console to ensure API calls are going to the correct backend URL.
