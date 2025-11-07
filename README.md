# ERPtech - Strona Statyczna Multi-Page

Nowoczesna strona statyczna inspirowana erptech.pl, stworzona z użyciem TailwindCSS i vanilla JavaScript. Strona ma strukturę multi-page z dedykowanymi podstronami dla każdej usługi.

## 🚀 Technologie

- **HTML5** - Struktura strony
- **TailwindCSS** - Framework CSS do stylizacji
- **Vanilla JavaScript** - Interaktywność bez zewnętrznych bibliotek
- **Font Awesome** - Ikony
- **Custom CSS** - Dodatkowe style i zmienne kolorystyczne

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
├── index.html           # Strona główna
├── script.js            # Logika JavaScript
├── css/
│   └── styles.css      # Niestandardowe style CSS
├── pages/              # Podstrony
│   ├── about.html      # O Nas
│   ├── contact.html    # Kontakt
│   ├── erpnext.html    # System ERPnext
│   ├── magazyn.html    # Moduł Magazyn
│   ├── produkcja.html  # Moduł Produkcja
│   ├── eod.html        # EOD
│   ├── fiori.html      # SAP FIORI
│   ├── integracje.html # Integracje SAP
│   └── iot.html        # SAP IoT
├── .nojekyll           # Konfiguracja GitHub Pages
└── README.md           # Dokumentacja
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

Ponieważ jest to strona statyczna, wystarczy otworzyć plik `index.html` w przeglądarce:

```bash
# Windows
start index.html

# Linux/Mac
open index.html
```

Alternatywnie możesz użyć prostego serwera HTTP:

```bash
# Python 3
python -m http.server 8000

# Node.js (jeśli masz zainstalowany http-server)
npx http-server
```

## 📝 Customizacja

### Zmiana kolorów
Kolory są definiowane w pliku `css/styles.css` przy użyciu zmiennych CSS:

```css
:root {
    --primary-color: #1e3a8a;      /* Ciemnoniebieski */
    --primary-dark: #1e40af;
    --primary-light: #3b82f6;
    --secondary-color: #0891b2;     /* Cyan */
    --accent-color: #f59e0b;        /* Pomarańczowy akcent */
}
```

Aby zmienić schemat kolorów, edytuj te zmienne w pliku `css/styles.css`.

### Dodanie nowej podstrony
1. Utwórz nowy plik HTML w folderze `pages/`
2. Skopiuj strukturę z istniejącej podstrony
3. Dodaj link do nowej strony w nawigacji (wszystkie pliki HTML)
4. Dostosuj zawartość

### Dropdown menu
Menu dropdown używa CSS hover. Konfiguracja znajduje się w `css/styles.css`:
```css
.dropdown:hover .dropdown-menu {
    opacity: 1;
    visibility: visible;
    transform: translateY(0);
}
```

## 📧 Kontakt

- Email: biuro@erptech.pl
- Tel: 693 068 300

## 📄 Licencja

Projekt stworzony jako strona statyczna dla celów demonstracyjnych.
Strona firmowa ERPtech
