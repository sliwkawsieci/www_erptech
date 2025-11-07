# Migracja strony ERPtech na Hugo

## ✅ Zakończono pomyślnie!

Strona została pomyślnie zmigrowana z czystego HTML na Hugo Static Site Generator.

## 📁 Struktura projektu

Nowy projekt Hugo znajduje się w katalogu: `hugo_site/`

```
hugo_site/
├── content/          # Treści strony w Markdown
│   ├── pl/          # Wersja polska
│   │   ├── _index.md           # Strona główna
│   │   ├── kontakt.md          # Kontakt
│   │   ├── o-nas.md            # O Nas
│   │   ├── kariera.md          # Oferty pracy
│   │   └── uslugi/
│   │       └── erpnext.md      # System ERPnext
│   └── en/          # Wersja angielska (do uzupełnienia)
├── layouts/          # Szablony HTML
│   ├── _default/
│   │   ├── baseof.html         # Główny szablon
│   │   └── single.html         # Szablon pojedynczej strony
│   ├── partials/
│   │   ├── head.html           # Meta tagi, style
│   │   ├── header.html         # Nawigacja
│   │   └── footer.html         # Stopka
│   └── index.html              # Szablon strony głównej
├── static/           # Pliki statyczne
│   ├── css/
│   ├── Images/
│   ├── script.js
│   └── admin/                  # Netlify CMS
├── hugo.toml        # Konfiguracja Hugo
├── netlify.toml     # Konfiguracja Netlify
└── README.md        # Dokumentacja
```

## 🚀 Uruchomienie

### Lokalnie (serwer deweloperski)

```bash
cd hugo_site
..\hugo_bin\hugo.exe server -D
```

Strona będzie dostępna pod adresem: **http://localhost:1313**

### Budowanie wersji produkcyjnej

```bash
cd hugo_site
..\hugo_bin\hugo.exe --minify
```

Pliki zostaną wygenerowane w katalogu `public/`

## 🌍 Wielojęzyczność

Strona obsługuje dwa języki:
- **Polski** (domyślny) - `/`
- **Angielski** - `/en/`

Menu nawigacyjne jest automatycznie generowane z konfiguracji w `hugo.toml`.

## ✨ Główne zalety migracji

### 1. **Łatwiejsze zarządzanie treścią**
- Treści w formacie Markdown (łatwiejsze do edycji)
- Możliwość użycia Netlify CMS do zarządzania treścią przez panel administracyjny
- Brak duplikacji kodu (header/footer w jednym miejscu)

### 2. **Wielojęzyczność out-of-the-box**
- Automatyczne generowanie wersji językowych
- Przełącznik języków w menu
- SEO-friendly URLs dla każdego języka
- Automatyczne hreflang tags

### 3. **Wydajność**
- Statyczne pliki HTML (błyskawiczne ładowanie)
- Automatyczna minifikacja CSS/JS
- Optymalizacja obrazów
- Doskonałe wyniki w Google PageSpeed

### 4. **SEO**
- Automatyczne generowanie sitemap.xml
- Robots.txt
- Meta tagi Open Graph
- Structured data (można dodać)
- Clean URLs

### 5. **Wdrożenie**
- Darmowy hosting na Netlify/Vercel
- Automatyczne wdrożenia przy push do Git
- HTTPS z Let's Encrypt
- CDN globalny

## 📝 Dodawanie nowych treści

### Nowa strona
```bash
hugo new content/pl/nazwa-strony.md
```

### Nowa usługa
```bash
hugo new content/pl/uslugi/nazwa-uslugi.md
```

### Edycja istniejącej strony
Edytuj plik `.md` w katalogu `content/pl/` lub `content/en/`

## 🎨 Netlify CMS (opcjonalnie)

Panel administracyjny dostępny pod adresem: `/admin/`

Po wdrożeniu na Netlify:
1. Włącz Git Gateway w ustawieniach Netlify
2. Włącz Identity w ustawieniach Netlify
3. Zaproś użytkowników do panelu CMS
4. Zaloguj się na `/admin/`

## 🔧 Konfiguracja

### Menu nawigacyjne
Edytuj sekcję `[languages.pl.menu.main]` w pliku `hugo.toml`

### Dane kontaktowe
Edytuj sekcję `[params]` w pliku `hugo.toml`:
```toml
[params]
  email = "biuro@erptech.pl"
  phone = "+48 693 068 300"
  phone_display = "(+48) 693 068 300"
```

## 📊 Statystyki budowania

```
Pages: 10 (PL) + 4 (EN) = 14 stron
Build time: ~38ms
Static files: 8
```

## 🚀 Następne kroki

### 1. Uzupełnienie treści angielskich
Utwórz odpowiedniki polskich stron w katalogu `content/en/`:
- `content/en/_index.md` - strona główna
- `content/en/about.md` - o nas
- `content/en/contact.md` - kontakt
- `content/en/careers.md` - kariera
- `content/en/services/erpnext.md` - ERPnext

### 2. Dodanie pozostałych usług
Utwórz pliki dla pozostałych usług:
- `content/pl/uslugi/magazyn.md`
- `content/pl/uslugi/produkcja.md`
- `content/pl/uslugi/eod.md`
- `content/pl/uslugi/fiori.md`
- `content/pl/uslugi/integracje.md`
- `content/pl/uslugi/iot.md`

### 3. Wdrożenie na Netlify
1. Utwórz repozytorium Git dla katalogu `hugo_site/`
2. Połącz z Netlify
3. Netlify automatycznie wykryje Hugo i skonfiguruje build
4. Domena: ustaw `erptech.pl` w ustawieniach Netlify

### 4. Konfiguracja formularza kontaktowego
Zamień `YOUR_FORM_ID` w pliku `content/pl/kontakt.md` na prawdziwy ID z Formspree lub użyj Netlify Forms.

### 5. Dodanie Google Analytics (opcjonalnie)
Dodaj do `hugo.toml`:
```toml
[services]
  [services.googleAnalytics]
    ID = "G-XXXXXXXXXX"
```

## 📚 Dokumentacja

- Hugo: https://gohugo.io/documentation/
- Netlify CMS: https://www.netlifycms.org/docs/
- Netlify: https://docs.netlify.com/

## 🆘 Wsparcie

W razie problemów:
1. Sprawdź logi budowania: `hugo server -D --verbose`
2. Sprawdź dokumentację Hugo
3. Skontaktuj się z zespołem deweloperskim

---

**Data migracji:** 7 listopada 2025  
**Wersja Hugo:** 0.121.1 Extended  
**Status:** ✅ Gotowe do wdrożenia
