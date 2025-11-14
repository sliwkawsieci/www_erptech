# 🚀 Quick Start - ERPtech Hugo

## Szybkie uruchomienie

### 1️⃣ Uruchom serwer deweloperski

**Najłatwiej:**
```bash
start-dev.bat
```

**Lub w VS Code:**
- Naciśnij `F5`
- Wybierz "Hugo Server"

**Lub w terminalu:**
```bash
cd hugo_site
..\hugo_bin\hugo.exe server --buildDrafts
```

➡️ Otwórz: **http://localhost:1313**

---

## Edycja treści

### Edytuj istniejącą stronę
1. Otwórz plik w `hugo_site/content/pl/`
2. Edytuj treść w Markdown lub HTML
3. Zapisz - Hugo automatycznie przebuduje stronę
4. Odśwież przeglądarkę

### Dodaj nową usługę
1. Utwórz: `hugo_site/content/pl/uslugi/nazwa.md`
2. Dodaj front matter:
```yaml
---
title: "Nazwa Usługi"
subtitle: "Opis"
date: 2025-11-14
---
```
3. Dodaj treść
4. Dodaj do menu w `hugo.toml`:
```toml
[[languages.pl.menu.main]]
  name = "Nazwa"
  parent = "erpnext"
  url = "/uslugi/nazwa/"
  weight = 10
```

---

## Budowanie produkcyjne

```bash
cd hugo_site
..\hugo_bin\hugo.exe --minify
```

Output: `hugo_site/public/`

---

## Struktura folderów

```
hugo_site/
├── content/        ← EDYTUJ TUTAJ (treści)
├── layouts/        ← Szablony HTML
├── static/         ← Obrazy, CSS, JS
├── hugo.toml       ← Konfiguracja i menu
└── public/         ← Wygenerowane (nie edytuj!)
```

---

## Przydatne komendy

```bash
# Serwer dev
hugo server --buildDrafts

# Build produkcyjny
hugo --minify

# Build + CSS
npm run build-css-prod
hugo --minify

# Sprawdź wersję
hugo version
```

---

## Pomoc

- 📚 [README.md](README.md) - Pełna dokumentacja
- 📝 [CHANGELOG.md](CHANGELOG.md) - Historia zmian
- 🔄 [MIGRACJA_HUGO.md](MIGRACJA_HUGO.md) - Proces migracji
- 🌐 [Hugo Docs](https://gohugo.io/documentation/)

---

**Serwer działa?** ✅ **http://localhost:1313**
