// Training App v6.3 built-in Supabase configuration
// This file is safe for GitHub Pages only when using Supabase anon/public key, NOT service_role/secret key.
window.TRAINING_APP_CONFIG = {
  SUPABASE_URL: "https://pfqrumoovipjxljkchku.supabase.co",
  SUPABASE_ANON_KEY: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBmcXJ1bW9vdmlwanhsamtjaGt1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODIxNzM0OTIsImV4cCI6MjA5Nzc0OTQ5Mn0.eotxnh0pSzZepiHv5A4xrJGrey-KzmjBA78bYlpjN-8"
};

(function applyBuiltInSupabaseConfig() {
  try {
    localStorage.setItem('trainingApp.cloudConfig.v1', JSON.stringify({
      url: window.TRAINING_APP_CONFIG.SUPABASE_URL,
      anon: window.TRAINING_APP_CONFIG.SUPABASE_ANON_KEY
    }));
  } catch (error) {
    console.warn('Unable to write Supabase config to localStorage:', error);
  }
})();
