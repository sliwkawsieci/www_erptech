# Przewodnik Publikacji Strony ERPtech

## Status Strony
✅ **Strona jest gotowa do publikacji**

### Ostatnie zmiany:
- Naprawiono renderowanie HTML na wszystkich stronach (usunięto wcięcia powodujące interpretację jako code blocks)
- Dodano nową sekcję "Oferta" z podstronami:
  - ERPnext Start
  - Cennik i Pakiety
  - Wsparcie
  - Hosting
- Dodano obrazek do hero section
- Naprawiono stronę "O Nas" z poprawnym renderowaniem HTML
- Dodano stronę "Kontakt" z formularzem

### Liczba stron: 24 (PL) + 16 (EN) = 40 stron

---

## Kroki do Publikacji

### 1. **Weryfikacja Lokalnie** ✅
```bash
cd hugo_site
..\hugo_bin\hugo.exe server --buildDrafts --port 1313
```
- Otwórz: `http://localhost:1313/`
- Sprawdź wszystkie strony
- Upewnij się, że HTML renderuje się poprawnie

**Status:** ✅ Wszystkie strony działają poprawnie

---

### 2. **Build Produkcyjny** ✅
```bash
cd hugo_site
..\hugo_bin\hugo.exe --config hugo.toml --minify --gc --destination ../docs
```

**Wynik:**
- 24 strony PL
- 16 stron EN
- 17 plików statycznych
- 2 sitemaps
- Build time: ~74ms

**Status:** ✅ Build zakończony pomyślnie

---

### 3. **Publikacja na GitHub Pages**

#### Opcja A: Automatyczna (GitHub Actions) - REKOMENDOWANA
1. Upewnij się, że wszystkie zmiany są committed:
```bash
git add .
git commit -m "Publikacja strony - wszystkie strony gotowe"
git push origin main
```

2. GitHub Actions automatycznie:
   - Pobierze kod
   - Zainstaluje zależności (npm)
   - Zbuduje CSS (Tailwind)
   - Zbuduje stronę Hugo
   - Opublikuje na GitHub Pages

3. Strona będzie dostępna pod: `https://sliwkawsieci.github.io/www_erptech/`

**Plik konfiguracji:** `.github/workflows/deploy.yml`

#### Opcja B: Manualna
1. Zbuduj stronę:
```bash
cd hugo_site
hugo --minify --gc --destination ../docs
```

2. Commit i push:
```bash
git add docs/
git commit -m "Publikacja strony"
git push origin main
```

3. W ustawieniach GitHub Pages wybierz branch `main` i folder `/docs`

---

### 4. **Konfiguracja Domeny**

Jeśli chcesz użyć domeny `erptech.pl`:

1. **W `hugo.toml` zmień baseURL:**
```toml
baseURL = 'https://erptech.pl/'
```

2. **W ustawieniach GitHub Pages:**
   - Przejdź do: Settings → Pages
   - Custom domain: `erptech.pl`
   - Zaznacz: "Enforce HTTPS"

3. **W DNS domeny dodaj rekordy:**
```
A record: 185.199.108.153
A record: 185.199.109.153
A record: 185.199.110.153
A record: 185.199.111.153

CNAME record: www → sliwkawsieci.github.io
```

---

### 5. **Weryfikacja Po Publikacji**

Po opublikowaniu sprawdź:

```bash
# Sprawdź dostępność
curl -I https://sliwkawsieci.github.io/www_erptech/

# Sprawdź sitemap
curl https://sliwkawsieci.github.io/www_erptech/sitemap.xml

# Sprawdź robots.txt
curl https://sliwkawsieci.github.io/www_erptech/robots.txt
```

---

## Checklist Przed Publikacją

- [x] Wszystkie strony testowane lokalnie
- [x] HTML renderuje się poprawnie (bez code blocks)
- [x] Obrazy ładują się prawidłowo
- [x] Linki wewnętrzne działają
- [x] Formularz kontaktowy skonfigurowany
- [x] SEO metadata ustawiona
- [x] robots.txt skonfigurowany
- [x] sitemap.xml generowany
- [x] CSS zminifikowany
- [x] Build produkcyjny testowany

---

## Ważne Pliki

| Plik | Opis |
|------|------|
| `hugo_site/hugo.toml` | Konfiguracja Hugo |
| `.github/workflows/deploy.yml` | Konfiguracja GitHub Actions |
| `hugo_site/content/pl/` | Treść stron PL |
| `hugo_site/layouts/` | Szablony HTML |
| `hugo_site/static/` | Pliki statyczne (obrazy, CSS) |
| `docs/` | Wygenerowana strona (po build) |

---

## Troubleshooting

### Problem: Build nie powiódł się
```bash
# Wyczyść cache
rm -r hugo_site/resources/

# Spróbuj ponownie
cd hugo_site
hugo --config hugo.toml --minify --gc
```

### Problem: Strona nie wyświetla się na GitHub Pages
1. Sprawdź Settings → Pages
2. Upewnij się, że branch jest ustawiony na `main`
3. Sprawdź GitHub Actions logi

### Problem: CSS nie ładuje się
```bash
cd hugo_site
npm install
npm run build-css-prod
```

---

## Następne Kroki

Po publikacji:

1. **Zarejestruj w wyszukiwarkach:**
   - Google Search Console
   - Bing Webmaster Tools

2. **Monitoruj:**
   - Google Analytics
   - Błędy 404
   - Wydajność strony

3. **Utrzymanie:**
   - Regularne aktualizacje treści
   - Monitoring linków
   - Backup bazy danych (jeśli będzie)

---

## Kontakt i Wsparcie

- Email: biuro@erptech.pl
- Telefon: +48 693 068 300
- GitHub: https://github.com/sliwkawsieci/www_erptech
