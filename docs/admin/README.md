# Konfiguracja Decap CMS — Jak używać CMS

### Dostęp do panelu CMS
Panel CMS jest dostępny pod adresem: `http://localhost:56921/admin/`

### Konfiguracja uwierzytelniania
Aby korzystać z CMS, musisz skonfigurować uwierzytelnianie:

1. **Dla Netlify**: Skonfiguruj Netlify Identity w panelu Netlify
2. **Dla lokalnego rozwoju**: Możesz tymczasowo zmienić backend w `config.yml`:
   ```yaml
   backend:
     "name": proxy
     proxy_url: http://localhost:8081/api/v1
   ```

### Dostępne kolekcje treści

#### Strona główna (PL/EN)
- Edycja tytułu, podtytułu i tekstów CTA
- Zarządzanie sekcjami: wartości, usługi, technologie, kontakt

#### Strony (PL/EN)
- Tworzenie nowych stron
- Edycja istniejących stron z pełnym frontmatter

#### Usługi (PL/EN)
- Zarządzanie stronami usługowymi
- Pełne wsparcie dla Hugo frontmatter

### Funkcje CMS

- **Podgląd treści**: Możliwość podglądu zmian przed publikacją
- **Zarządzanie mediami**: Upload obrazów do folderu `/static/Images/`
- **Wielojęzyczność**: Obsługa treści w języku polskim i angielskim
- **Draft/Opublikowane**: Możliwość oznaczania treści jako draft

### Wymagania

- Hugo z włączoną obsługą draft (`--buildDrafts`)
- Serwer deweloperski uruchomiony
- Dostęp do panelu CMS przez `/admin/`

### Rozwiązywanie problemów

1. **CMS nie ładuje się**: Sprawdź czy serwer Hugo działa i czy pliki admin są dostępne
2. **Błędy zapisywania**: Sprawdź konfigurację backend w `config.yml`
3. **Podgląd nie działa**: Upewnij się że `site_url` wskazuje na prawidłowy adres lokalny
