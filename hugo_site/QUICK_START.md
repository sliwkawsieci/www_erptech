# Quick Start - Hugo ERPtech

## 🚀 Szybki start

### 1. Uruchom serwer deweloperski

```bash
# Z katalogu głównego projektu
cd hugo_site
..\hugo_bin\hugo.exe server -D

# Lub z katalogu hugo_site
hugo server -D
```

Otwórz przeglądarkę: http://localhost:1313

### 2. Dodaj nową stronę

```bash
# Nowa strona polska
hugo new content/pl/nazwa-strony.md

# Nowa usługa polska
hugo new content/pl/uslugi/nazwa-uslugi.md

# Nowa strona angielska
hugo new content/en/page-name.md
```

### 3. Edytuj treść

Otwórz utworzony plik `.md` i edytuj:

```markdown
---
title: "Tytuł strony"
subtitle: "Podtytuł (opcjonalny)"
date: 2025-11-07
---

## Nagłówek

Treść strony w formacie Markdown...

### Podnagłówek

- Lista
- Elementów

**Pogrubienie** i *kursywa*

[Link](https://example.com)
```

### 4. Dodaj HTML w Markdown (jeśli potrzeba)

Hugo pozwala na używanie HTML w plikach Markdown:

```markdown
<div class="bg-blue-50 p-6 rounded-xl">
    <h3>Niestandardowy element</h3>
    <p>Z HTML i klasami Tailwind</p>
</div>
```

### 5. Zbuduj stronę produkcyjną

```bash
hugo --minify
```

Pliki będą w katalogu `public/`

## 📝 Przykłady

### Prosta strona

```markdown
---
title: "O firmie"
subtitle: "Poznaj naszą historię"
date: 2025-11-07
---

## Kim jesteśmy?

Jesteśmy firmą specjalizującą się w...

## Nasza misja

Naszą misją jest...
```

### Strona z niestandardowym HTML

```markdown
---
title: "Usługi"
date: 2025-11-07
---

<div class="grid md:grid-cols-2 gap-6">
    <div class="bg-white p-6 rounded-xl shadow">
        <h3 class="font-bold mb-2">Usługa 1</h3>
        <p>Opis usługi...</p>
    </div>
    <div class="bg-white p-6 rounded-xl shadow">
        <h3 class="font-bold mb-2">Usługa 2</h3>
        <p>Opis usługi...</p>
    </div>
</div>
```

## 🎨 Dostępne klasy CSS

Możesz używać wszystkich klas Tailwind CSS oraz niestandardowych klas z `styles.css`:

- `.btn-primary` - Pomarańczowy przycisk
- `.btn-secondary` - Szary przycisk
- `.hero-gradient` - Gradient tła hero
- `.service-card` - Karta usługi
- `.nav-link` - Link w nawigacji

## 🌍 Tłumaczenia

### Dodaj tłumaczenie istniejącej strony

1. Skopiuj plik z `content/pl/` do `content/en/`
2. Przetłumacz treść
3. Hugo automatycznie pokaże przełącznik języków

### Przykład:

```
content/
├── pl/
│   └── o-nas.md          # Polska wersja
└── en/
    └── about.md          # Angielska wersja (to samo co o-nas)
```

## 🔧 Edycja menu

Edytuj `hugo.toml`:

```toml
[[languages.pl.menu.main]]
  name = "Nowa pozycja"
  url = "/nowa-strona/"
  weight = 60
```

## 📸 Dodawanie obrazów

1. Umieść obraz w `static/Images/`
2. Użyj w Markdown:

```markdown
![Opis obrazu](/Images/nazwa-obrazu.jpg)
```

Lub w HTML:

```html
<img src="/Images/nazwa-obrazu.jpg" alt="Opis" class="rounded-xl">
```

## 💡 Wskazówki

- Zapisz plik `.md` - Hugo automatycznie przebuduje stronę
- Używaj Markdown dla prostych treści
- Używaj HTML dla bardziej złożonych layoutów
- Wszystkie klasy Tailwind CSS działają
- Ikony Font Awesome są dostępne: `<i class="fas fa-heart"></i>`

## 🐛 Rozwiązywanie problemów

### Strona się nie aktualizuje?
- Sprawdź czy serwer działa
- Odśwież przeglądarkę (Ctrl+F5)
- Sprawdź logi w terminalu

### Błąd budowania?
- Sprawdź składnię YAML w front matter (między `---`)
- Upewnij się, że wszystkie wymagane pola są wypełnione
- Sprawdź czy ścieżki do plików są poprawne

### Menu nie działa?
- Sprawdź konfigurację w `hugo.toml`
- Upewnij się, że URL zaczyna się od `/` i kończy na `/`
