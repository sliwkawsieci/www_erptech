# Checklist Publikacji Strony ERPtech

## 📋 Przygotowanie Strony

### Zawartość
- [x] Strona główna z hero section i obrazkami
- [x] Sekcja "O Nas" z HTML
- [x] Sekcja "Oferta" z 4 podstronami:
  - [x] ERPnext Start
  - [x] Cennik i Pakiety
  - [x] Wsparcie
  - [x] Hosting
- [x] Strona "Kontakt" z formularzem
- [x] Strony usług (ERPnext, Magazyn, Produkcja, itd.)
- [x] Strona "Kariera"

### Techniczne
- [x] HTML renderuje się poprawnie (bez code blocks)
- [x] Wszystkie obrazy ładują się
- [x] CSS (Tailwind) zminifikowany
- [x] Linki wewnętrzne działają
- [x] Responsywny design (mobile, tablet, desktop)
- [x] SEO metadata ustawiona
- [x] robots.txt skonfigurowany
- [x] sitemap.xml generowany

### Testowanie
- [x] Testowanie lokalne na porcie 1313
- [x] Build produkcyjny przebiegł pomyślnie
- [x] Wszystkie 40 stron (24 PL + 16 EN) zbudowane
- [x] Brak błędów w konsoli Hugo

---

## 🚀 Kroki Publikacji (Krok po Kroku)

### Krok 1: Przygotowanie Git
```bash
# Przejdź do katalogu projektu
cd c:\Users\KrzysztofŚliwa\repo\www_erptech

# Sprawdź status
git status

# Dodaj wszystkie zmiany
git add .

# Commit
git commit -m "Publikacja strony ERPtech - wszystkie strony gotowe do publikacji"

# Push na GitHub
git push origin main
```

**Czas:** ~1-2 minuty

---

### Krok 2: Uruchomienie GitHub Actions
Po push na `main` branch:

1. Przejdź na: https://github.com/sliwkawsieci/www_erptech
2. Kliknij na zakładkę "Actions"
3. Obserwuj workflow "Deploy Hugo site to GitHub Pages"
4. Czekaj na zielony checkmark ✅

**Czas:** ~3-5 minut

---

### Krok 3: Weryfikacja Publikacji
Po zakończeniu workflow:

1. Przejdź na: https://sliwkawsieci.github.io/www_erptech/
2. Sprawdź:
   - Strona główna ładuje się
   - Menu działa
   - Obrazy wyświetlają się
   - Linki działają

**Czas:** ~1 minuta

---

### Krok 4: Konfiguracja Domeny (Opcjonalnie)

Jeśli chcesz użyć domeny `erptech.pl`:

#### 4a. GitHub Pages Settings
1. Przejdź do: https://github.com/sliwkawsieci/www_erptech/settings/pages
2. Pod "Custom domain" wpisz: `erptech.pl`
3. Kliknij "Save"
4. Zaznacz "Enforce HTTPS"

#### 4b. DNS Konfiguracja (u dostawcy domeny)
Dodaj rekordy DNS:

```
Type: A
Name: @
Value: 185.199.108.153

Type: A
Name: @
Value: 185.199.109.153

Type: A
Name: @
Value: 185.199.110.153

Type: A
Name: @
Value: 185.199.111.153

Type: CNAME
Name: www
Value: sliwkawsieci.github.io
```

**Czas:** ~15-30 minut (propagacja DNS)

---

## 📊 Status Strony

| Aspekt | Status | Notatka |
|--------|--------|---------|
| Zawartość | ✅ Gotowa | 24 strony PL, 16 stron EN |
| HTML/CSS | ✅ Gotowy | Tailwind CSS, responsywny |
| Obrazy | ✅ Gotowe | 17 plików statycznych |
| SEO | ✅ Gotowe | robots.txt, sitemap.xml |
| Build | ✅ Testowany | Czas: 74ms |
| GitHub Actions | ✅ Skonfigurowany | Automatyczna publikacja |

---

## 🔍 Weryfikacja Po Publikacji

### Sprawdzenie dostępności
```bash
# Sprawdź główną stronę
curl -I https://sliwkawsieci.github.io/www_erptech/

# Powinno zwrócić: HTTP/2 200
```

### Sprawdzenie SEO
```bash
# Sprawdź sitemap
curl https://sliwkawsieci.github.io/www_erptech/sitemap.xml

# Sprawdź robots.txt
curl https://sliwkawsieci.github.io/www_erptech/robots.txt
```

### Sprawdzenie w przeglądarce
- [ ] Strona główna ładuje się szybko
- [ ] Menu responsywne na mobile
- [ ] Obrazy wyświetlają się
- [ ] Linki działają
- [ ] Formularz kontaktowy dostępny
- [ ] Brak błędów w DevTools (F12)

---

## 🎯 Następne Kroki (Po Publikacji)

### Rejestracja w Wyszukiwarkach
1. **Google Search Console**
   - Przejdź na: https://search.google.com/search-console
   - Dodaj domenę
   - Prześlij sitemap: `/sitemap.xml`

2. **Bing Webmaster Tools**
   - Przejdź na: https://www.bing.com/webmasters
   - Dodaj domenę
   - Prześlij sitemap

### Monitoring
- Zainstaluj Google Analytics
- Monitoruj błędy 404
- Sprawdzaj wydajność strony

### Utrzymanie
- Regularne aktualizacje treści
- Monitoring linków
- Backup kodu

---

## ⚠️ Troubleshooting

### Problem: GitHub Actions workflow nie uruchamia się
**Rozwiązanie:**
1. Sprawdź czy plik `.github/workflows/deploy.yml` istnieje
2. Sprawdź czy branch to `main`
3. Sprawdź GitHub Actions logi

### Problem: Strona nie wyświetla się na GitHub Pages
**Rozwiązanie:**
1. Czekaj 5-10 minut na propagację
2. Wyczyść cache przeglądarki (Ctrl+Shift+Del)
3. Sprawdź Settings → Pages

### Problem: CSS nie ładuje się
**Rozwiązanie:**
```bash
cd hugo_site
npm install
npm run build-css-prod
git add .
git commit -m "Rebuild CSS"
git push origin main
```

### Problem: Obrazy nie wyświetlają się
**Rozwiązanie:**
1. Sprawdź czy ścieżki do obrazów są prawidłowe
2. Obrazy powinny być w: `hugo_site/static/Images/`
3. URL powinien być: `/Images/nazwa-pliku.png`

---

## 📞 Kontakt

- **Email:** biuro@erptech.pl
- **Telefon:** +48 693 068 300
- **GitHub:** https://github.com/sliwkawsieci/www_erptech

---

## 📝 Notatki

- Strona jest w pełni responsywna
- Wszystkie strony mają poprawne SEO metadata
- Formularz kontaktowy wymaga konfiguracji Formspree (zamień `YOUR_FORM_ID`)
- Build time jest bardzo szybki (~74ms)
- Strona obsługuje dwa języki: Polski i Angielski
