# ERPtech - Strona Hugo

Nowoczesna strona firmowa erptech.pl, zbudowana z użyciem generatora stron statycznych Hugo, TailwindCSS i vanilla JavaScript.

## 🚀 Technologie

- **Hugo** - Generator stron statycznych
- **HTML5** - Struktura strony
- **TailwindCSS** - Framework CSS do stylizacji
- **Vanilla JavaScript** - Interaktywność bez zewnętrznych bibliotek
- **Font Awesome** - Ikony
- **Markdown** - Tworzenie treści

## 🎨 Paleta Kolorów

Strona wykorzystuje paletę kolorów inspirowaną erptech.pl:
- **Primary**: `#1e3a8a` (ciemnoniebieski)
- **Secondary**: `#0891b2` (cyan)
- **Accent**: `#f59e0b` (pomarańczowy)

## 📋 Funkcjonalności

- ✅ Responsywny design (mobile-first)
- ✅ Struktura multi-page z dedykowanymi podstronami
- ✅ Płynna nawigacja
- ✅ Poprawione dropdown menu (nie znika przy zjechaniu)
- ✅ Menu mobilne z animacją
- ✅ Animacje przy scrollowaniu
- ✅ Efekt parallax w sekcji hero
- ✅ Przycisk "scroll to top"
- ✅ Formularz kontaktowy
- ✅ Hover effects na kartach usług

## 🌐 Deployment na GitHub Pages

### Krok 1: Push do repozytorium
```bash
git add .
git commit -m "Initial commit - ERPtech static website"
git push origin main
```

### Krok 2: Konfiguracja GitHub Pages
1. Przejdź do Settings repozytorium na GitHub
2. W sekcji "Pages" wybierz:
   - Source: Deploy from a branch
   - Branch: main
   - Folder: / (root)
3. Kliknij Save

### Krok 3: Dostęp do strony
Po kilku minutach strona będzie dostępna pod adresem:
```
https://<twoja-nazwa-użytkownika>.github.io/www_erptech/
```

## 📁 Struktura Projektu

```
www_erptech/
├── hugo_site/               # Źródła Hugo
│   ├── content/            # Treści w Markdown
│   │   ├── pl/            # Wersja polska
│   │   │   ├── _index.md  # Strona główna
│   │   │   ├── o-nas.md
│   │   │   ├── kontakt.md
│   │   │   ├── kariera.md
│   │   │   └── uslugi/    # Podstrony usług
│   │   │       ├── erpnext.md
│   │   │       ├── magazyn.md
│   │   │       ├── produkcja.md
│   │   │       ├── eod.md
│   │   │       ├── fiori.md
│   │   │       ├── integracje.md
│   │   │       └── iot.md
│   │   └── en/            # Wersja angielska
│   ├── layouts/           # Szablony HTML
│   │   ├── _default/      # Domyślne layouty
│   │   │   ├── baseof.html
│   │   │   └── single.html
│   │   ├── partials/      # Komponenty wielokrotnego użytku
│   │   │   ├── header.html
│   │   │   └── footer.html
│   │   └── index.html     # Layout strony głównej
│   ├── static/            # Zasoby statyczne
│   │   ├── css/
│   │   ├── js/
│   │   └── images/
│   ├── hugo.toml          # Konfiguracja Hugo
│   └── public/            # Wygenerowane strony (gitignored)
├── hugo_bin/              # Binarka Hugo
│   └── hugo.exe
├── [pliki wygenerowane]   # Output Hugo skopiowany do roota
└── README.md              # Dokumentacja
```

## 📄 Podstrony

### Strona główna (index.html)
- Hero section z opisem usług
- Sekcja wartości (Profesjonalizm, Współpraca, Odpowiedzialność)
- Przegląd usług (6 kart)
- Formularz kontaktowy
- Footer

### Podstrony usług
1. **ERPnext** - System ERP bez licencji
2. **Magazyn** - Moduł zarządzania magazynem
3. **Produkcja** - Moduł planowania produkcji
4. **EOD** - Elektroniczny Obieg Dokumentów
5. **SAP FIORI** - Nowoczesne interfejsy SAP
6. **Integracje** - Integracje SAP z systemami zewnętrznymi
7. **SAP IoT** - Internet of Things
8. **O Nas** - Informacje o firmie
9. **Kontakt** - Formularz kontaktowy i dane

## 🔧 Lokalne Uruchomienie

### Tryb deweloperski (z automatycznym przeładowaniem)

```bash
# Uruchom serwer deweloperski Hugo
hugo_bin\hugo.exe server --source hugo_site

# Strona będzie dostępna pod: http://localhost:1313/
```

### Budowanie strony produkcyjnej

```bash
# Zbuduj stronę
hugo_bin\hugo.exe --source hugo_site

# Skopiuj output do roota projektu
Copy-Item -Path hugo_site\public\* -Destination . -Recurse -Force
```

### Edycja treści

1. Otwórz plik `.md` w `hugo_site/content/pl/` lub `hugo_site/content/en/`
2. Edytuj treść w Markdownie
3. Hugo automatycznie przebuduje stronę (jeśli działa `hugo server`)
4. Zmiany pojawią się natychmiast w przeglądarce

## 📝 Customizacja

### Zmiana treści strony
1. Edytuj pliki `.md` w `hugo_site/content/pl/` lub `hugo_site/content/en/`
2. Front matter (nagłówek YAML) określa meta dane:
   ```yaml
   ---
   title: "Tytuł strony"
   subtitle: "Podtytuł"
   date: 2025-11-07
   ---
   ```
3. Treść piszesz w Markdownie lub osadzasz HTML (jeśli `unsafe = true` w hugo.toml)

### Zmiana layoutu
1. Edytuj szablony w `hugo_site/layouts/`
2. `baseof.html` - bazowy layout ze wspólną strukturą
3. `single.html` - layout dla pojedynczych stron
4. `partials/` - komponenty wielokrotnego użytku (header, footer)

### Dodanie nowej usługi
1. Utwórz plik `.md` w `hugo_site/content/pl/uslugi/nazwa-uslugi.md`
2. Dodaj front matter i treść w Markdownie
3. Dodaj link w menu w `hugo_site/hugo.toml`:
   ```toml
   [[languages.pl.menu.main]]
     name = "Nazwa Usługi"
     parent = "erpnext"  # lub "sap"
     url = "/uslugi/nazwa-uslugi/"
     weight = 5
   ```
4. Przebuduj stronę: `hugo_bin\hugo.exe --source hugo_site`

### Zmiana kolorów
Kolory TailwindCSS są używane bezpośrednio w szablonach HTML.
Dostosuj klasy Tailwind w plikach layoutów lub dodaj własne CSS w `hugo_site/static/css/`

## 📧 Kontakt

- Email: biuro@erptech.pl
- Tel: 693 068 300

## 📄 Licencja

Projekt stworzony jako strona statyczna dla celów demonstracyjnych.
Strona firmowa ERPtech
