# ERPtech Website

Oficjalna strona internetowa firmy ERPtech - głównego przedstawiciela ERPnext w Polsce.

## 🚀 Technologie

- **Hugo** v0.121.1 Extended - Static Site Generator
- **Tailwind CSS** - Framework CSS
- **JavaScript** - Interaktywność
- **Netlify CMS** - System zarządzania treścią (opcjonalnie)

## 📁 Struktura projektu

```
www_erptech/
├── hugo_site/          # Projekt Hugo (główny folder)
│   ├── content/        # Treści w Markdown
│   │   ├── pl/        # Wersja polska
│   │   │   ├── _index.md
│   │   │   ├── kontakt.md
│   │   │   ├── o-nas.md
│   │   │   ├── kariera.md
│   │   │   └── uslugi/
│   │   │       ├── erpnext.md
│   │   │       ├── magazyn.md
│   │   │       ├── produkcja.md
│   │   │       ├── eod.md
│   │   │       ├── lean-erp.md
│   │   │       ├── fiori.md
│   │   │       ├── integracje.md
│   │   │       └── iot.md
│   │   └── en/        # Wersja angielska
│   ├── layouts/        # Szablony HTML
│   │   ├── _default/
│   │   │   ├── baseof.html
│   │   │   └── single.html
│   │   ├── partials/
│   │   │   ├── head.html
│   │   │   ├── header.html
│   │   │   └── footer.html
│   │   └── index.html
│   ├── static/         # Pliki statyczne
│   │   ├── Images/
│   │   ├── css/
│   │   │   └── styles.css (wygenerowany)
│   │   ├── script.js
│   │   └── admin/
│   ├── assets/         # Pliki źródłowe
│   │   └── css/
│   │       └── main.css (Tailwind source)
│   ├── hugo.toml       # Konfiguracja Hugo
│   ├── tailwind.config.js
│   ├── package.json
│   └── netlify.toml
├── hugo_bin/           # Hugo binary (lokalny)
│   └── hugo.exe
├── .vscode/            # Konfiguracja VS Code
│   ├── launch.json
│   └── tasks.json
├── .nojekyll           # Dla GitHub Pages
├── MIGRACJA_HUGO.md    # Historia migracji
└── README.md           # Ta dokumentacja
```

## 🔧 Uruchomienie lokalne

### Serwer deweloperski

```bash
# Metoda 1: Przez VS Code
# Naciśnij F5 i wybierz "Hugo Server"

# Metoda 2: Przez terminal
cd hugo_site
..\hugo_bin\hugo.exe server --buildDrafts --port 8080
```

Strona będzie dostępna pod: **http://localhost:8080**

### Budowanie CSS (Tailwind)

```bash
cd hugo_site
npm run build-css        # Tryb watch (automatyczne przebudowanie)
npm run build-css-prod   # Minifikacja dla produkcji
```

### Budowanie strony produkcyjnej

```bash
cd hugo_site
..\hugo_bin\hugo.exe --minify
```

Pliki zostaną wygenerowane w `hugo_site/public/`

## 📝 Edycja treści

### Dodanie nowej strony

```bash
cd hugo_site
..\hugo_bin\hugo.exe new content/pl/nazwa-strony.md
```

### Dodanie nowej usługi

1. Utwórz plik: `hugo_site/content/pl/uslugi/nazwa-uslugi.md`
2. Dodaj front matter:
```yaml
---
title: "Nazwa Usługi"
subtitle: "Krótki opis"
date: 2025-11-14
---
```
3. Dodaj treść w Markdown lub HTML
4. Dodaj do menu w `hugo.toml`:
```toml
[[languages.pl.menu.main]]
  name = "Nazwa Usługi"
  parent = "erpnext"  # lub "sap"
  url = "/uslugi/nazwa-uslugi/"
  weight = 6
```

### Edycja istniejącej strony

1. Otwórz plik `.md` w `hugo_site/content/pl/` lub `hugo_site/content/en/`
2. Edytuj treść
3. Hugo automatycznie przebuduje stronę (jeśli działa `hugo server`)

## 🌍 Wielojęzyczność

Strona obsługuje dwa języki:
- **Polski** (domyślny) - `/`
- **Angielski** - `/en/`

Menu i treści są automatycznie generowane dla każdego języka z konfiguracji w `hugo.toml`.

## 🎨 Customizacja

### Zmiana kolorów

Edytuj `hugo_site/tailwind.config.js`:
```javascript
colors: {
  orange: {
    500: '#f97316',  // Primary color
    // ...
  },
  blue: {
    500: '#3b82f6',  // Secondary color
    // ...
  }
}
```

### Zmiana layoutu

Edytuj szablony w `hugo_site/layouts/`:
- `_default/baseof.html` - bazowy layout
- `_default/single.html` - layout pojedynczej strony
- `partials/header.html` - nawigacja
- `partials/footer.html` - stopka
- `index.html` - strona główna

### Dodanie custom CSS

Dodaj style w `hugo_site/assets/css/main.css` (Tailwind source)

## 🚀 Deployment

### Netlify (zalecane)

1. Push kod do GitHub
2. Połącz repozytorium z Netlify
3. Netlify automatycznie wykryje Hugo
4. Ustaw build command: `cd hugo_site && hugo --minify`
5. Ustaw publish directory: `hugo_site/public`

### GitHub Pages

1. Zbuduj stronę: `cd hugo_site && ..\hugo_bin\hugo.exe --minify`
2. Skopiuj zawartość `hugo_site/public/` do głównego katalogu
3. Push do GitHub
4. Włącz GitHub Pages w ustawieniach repo

### Własny serwer

1. Zbuduj stronę: `cd hugo_site && ..\hugo_bin\hugo.exe --minify`
2. Prześlij zawartość `hugo_site/public/` na serwer
3. Skonfiguruj serwer WWW (nginx/Apache) aby serwował pliki

## 📊 Statystyki

- **Strony**: 17 (PL) + 15 (EN) = 32 strony
- **Czas budowania**: ~70-140ms
- **Rozmiar**: ~2MB (z obrazami)
- **Performance**: 95+ na Google PageSpeed

## 🆘 Wsparcie

### Problemy z budowaniem

```bash
# Sprawdź wersję Hugo
hugo_bin\hugo.exe version

# Zbuduj z verbose logging
cd hugo_site
..\hugo_bin\hugo.exe server --verbose
```

### Problemy z CSS

```bash
# Przebuduj CSS
cd hugo_site
npx tailwindcss -i ./assets/css/main.css -o ./static/css/styles.css --minify
```

## 📚 Dokumentacja

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Tailwind CSS](https://tailwindcss.com/docs)
- [Netlify CMS](https://www.netlifycms.org/docs/)

## 📧 Kontakt

- **Email**: biuro@erptech.pl
- **Telefon**: (+48) 693 068 300
- **Strona**: https://erptech.pl

---

**Ostatnia aktualizacja**: 14 listopada 2025  
**Wersja Hugo**: 0.121.1 Extended  
**Status**: ✅ Produkcja
