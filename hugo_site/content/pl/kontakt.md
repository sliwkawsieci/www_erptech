---
title: "Kontakt"
subtitle: "Skontaktuj się z nami"
date: 2025-11-07
raw_html: true
---

<div class="max-w-4xl mx-auto">
<div class="bg-white p-8 rounded-xl shadow-lg">
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST" class="space-y-6">
<!-- ZASTĄP YOUR_FORM_ID prawdziwym ID formularza z Formspree -->
<div class="grid md:grid-cols-2 gap-6">
<div>
<label for="name" class="block text-gray-700 font-medium mb-2">Imię i nazwisko *</label>
<input type="text" id="name" name="name" required 
class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-purple-600 focus:border-transparent">
</div>
<div>
<label for="email" class="block text-gray-700 font-medium mb-2">Email *</label>
<input type="email" id="email" name="email" required 
class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-purple-600 focus:border-transparent">
</div>
</div>

<div>
<label for="subject" class="block text-gray-700 font-medium mb-2">Temat</label>
<input type="text" id="subject" name="subject" 
class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-purple-600 focus:border-transparent">
</div>

<div>
<label for="message" class="block text-gray-700 font-medium mb-2">Treść wiadomości</label>
<textarea id="message" name="message" rows="5" 
class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-purple-600 focus:border-transparent"></textarea>
</div>

<div class="text-center">
<button type="submit" class="btn-primary text-lg">
Wyślij wiadomość
</button>
</div>
</form>

<div class="mt-8 text-center text-gray-600">
<p class="mb-2">
<i class="fas fa-envelope mr-2"></i>
<a href="mailto:biuro@erptech.pl" class="text-blue-600 hover:underline">biuro@erptech.pl</a>
</p>
<p>
<i class="fas fa-phone mr-2"></i>
<a href="tel:+48693068300" class="text-blue-600 hover:underline">(+48) 693 068 300</a>
</p>
</div>
</div>
</div>
