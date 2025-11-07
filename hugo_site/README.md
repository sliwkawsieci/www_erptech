# ERPtech - Strona Hugo

Strona internetowa ERPtech zbudowana z wykorzystaniem Hugo Static Site Generator.

## Wymagania

- Hugo Extended v0.121.1 lub nowszy
- Git (opcjonalnie, do wersjonowania)

## Instalacja Hugo

### Windows (Chocolatey)
```bash
choco install hugo-extended
```

### Windows (Scoop)
```bash
scoop install hugo-extended
```

### Lub pobierz bezpośrednio
Pobierz z: https://github.com/gohugoio/hugo/releases

## Uruchomienie lokalnie

```bash
# Przejdź do katalogu projektu
cd hugo_site

# Uruchom serwer deweloperski
hugo server -D

# Strona będzie dostępna pod adresem: http://localhost:1313
```

## Struktura projektu

```
hugo_site/
├── archetypes/       # Szablony nowych treści
├── content/          # Treści strony
│   ├── pl/          # Treści polskie
│   └── en/          # Treści angielskie
├── layouts/          # Szablony HTML
│   ├── _default/    # Domyślne szablony
│   └── partials/    # Komponenty wielokrotnego użytku
├── static/           # Pliki statyczne (CSS, JS, obrazy)
└── hugo.toml        # Konfiguracja Hugo
```

## Dodawanie nowych treści

### Nowa strona
```bash
hugo new content/pl/nazwa-strony.md
```

### Nowa usługa
```bash
hugo new content/pl/uslugi/nazwa-uslugi.md
```

## Budowanie strony produkcyjnej

```bash
# Zbuduj stronę
hugo --minify

# Pliki zostaną wygenerowane w katalogu public/
```

## Wdrożenie

### Netlify
1. Połącz repozytorium z Netlify
2. Ustaw komendę budowania: `hugo --minify`
3. Ustaw katalog publikacji: `public`

### Vercel
1. Połącz repozytorium z Vercel
2. Framework Preset: Hugo
3. Build Command: `hugo --minify`
4. Output Directory: `public`

## Wielojęzyczność

Strona obsługuje dwa języki:
- Polski (domyślny) - `/`
- Angielski - `/en/`

Aby dodać tłumaczenie strony, utwórz odpowiedni plik w katalogu `content/en/`.

## Konfiguracja

Główna konfiguracja znajduje się w pliku `hugo.toml`. Możesz tam edytować:
- Menu nawigacyjne
- Parametry strony (email, telefon)
- Ustawienia SEO
- Konfigurację języków

## Wsparcie

W razie pytań skontaktuj się z zespołem deweloperskim.
