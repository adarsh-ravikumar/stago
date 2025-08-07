export const env = {
  NODE_ENV: process.env.NODE_ENV || 'dev',
  PORT: process.env.PORT ? Number(process.env.PORT) : 3000,
  BASE_URL: process.env.BASE_URL || 'http://localhost:3000',

  SUPABASE_URL: process.env.SUPABASE_URL!,
  SUPABASE_ANON_KEY: process.env.SUPABASE_ANON_KEY!,
  SUPABASE_SERVICE_ROLE_KEY: process.env.SUPABASE_SERVICE_ROLE_KEY!,
};
