# NEOFORM — 3D Glassmorphism Gym Website

## Included
- Responsive single-page gym website
- Premium photo-driven hero with 3D rings, glass cards, micro-interactions and equipment scene
- Glassmorphism UI
- Home, About, Programs, Equipment, Gallery, Memberships, Join, Contact
- Mobile navigation
- Accessible form validation
- No API keys or secrets in frontend
- Demo images from Unsplash

## Run
Open `index.html` directly, or use VS Code Live Server.

## Production security
This is a frontend demo. Before collecting real member data:
1. Add a PHP/Node/etc. backend with server-side validation.
2. Use parameterized SQL queries / ORM.
3. Hash passwords with Argon2id/bcrypt.
4. Add CSRF protection and secure, HttpOnly, SameSite cookies.
5. Add rate limiting, input length limits, MIME/type checks for uploads, and server-side authorization.
6. Serve over HTTPS and keep secrets outside public files.
7. Replace the demo form handler with a secure API.
