
PRIMA COOL MANDIRI - Full Deploy Package
Generated files for a deployable web app on Vercel + Supabase.
Contents: frontend static app, API stubs (serverless), Supabase SQL, assets, and README instructions.

Files in this ZIP:
- /frontend/index.html                (simple redirect to invoice)
- /frontend/invoice.html              (mobile-optimized invoice page)
- /frontend/admin.html                (admin dashboard)
- /api/ (serverless function stubs for Vercel)
  - api/master-items.js
  - api/invoices.js
  - api/technicians.js
  - api/payment-methods.js
- supabase_schema.sql
- supabase_seed.sql
- vercel.json
- package.json
- README_DEPLOY.md (this file)
- /public/logo_prima_cool_enhanced_blackbg.png
- /public/qris_dummy.png

--- DEPLOY INSTRUCTIONS (summary) ---

1) Create a Supabase project at https://app.supabase.com
   - In the SQL editor, run supabase_schema.sql then supabase_seed.sql
   - Note the Project URL and anon/public API key (Service role key only for secure admin operations; use env secrets)

2) Deploy to Vercel
   - Create an account at https://vercel.com and new project -> Import from Git (or upload ZIP)
   - Set Environment Variables on Vercel for Supabase connection:
       SUPABASE_URL = https://your-project.supabase.co
       SUPABASE_ANON_KEY = public-anon-key
       SUPABASE_SERVICE_KEY = service-role-key (if using server-side admin features)
   - Deploy the project. API routes are under /api/*.js and will be deployed as serverless functions.

3) After deploy
   - Visit /admin to login as admin (initially no auth - see README for adding simple auth or using Supabase Auth)
   - Visit /invoice to use the mobile invoice page

--- NOTES ---
- This package contains working UI and API stubs designed to be extended. Implement server-side logic for production use, including authentication, validation, and secure storage of service keys.
- Replace qris_dummy.png with your real QRIS image using the Admin -> Payment Settings UI (once implemented).
- If you want, I can perform the full deploy for you (requires access to your Vercel account).

