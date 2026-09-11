
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop | Pr<iium Digital Store</title>

<meta name="description"
      content="NexusShop — pr<iium technology, fashion and lifestyle products.">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap"
      rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   ROOT
========================================================= */

:root {
    --primary: #111827;
    --secondary: #6366f1;
    --secondary-2: #8b5cf6;
    --accent: #06b6d4;

    --bg: #f8fafc;
    --surface: #ffffff;
    --surface-2: #f1f5f9;

    --text: #111827;
    --muted: #64748b;
    --border: rgba(15,23,42,.08);

    --success: #10b981;
    --danger: #ef4444;
    --warning: #f59e0b;

    --radius-sm: 10px;
    --radius-md: 16px;
    --radius-lg: 24px;

    --shadow-sm: 0 5px 20px rgba(15,23,42,.06);
    --shadow-md: 0 15px 45px rgba(15,23,42,.10);
    --shadow-lg: 0 25px 80px rgba(15,23,42,.16);

    --container: 1280px;

    --transition: .25s ease;
}

[data-th<ie="dark"] {

    --primary: #f8fafc;

    --bg: #070b14;
    --surface: #0f172a;
    --surface-2: #172033;

    --text: #f8fafc;
    --muted: #94a3b8;

    --border: rgba(255,255,255,.08);

    --shadow-sm: 0 5px 25px rgba(0,0,0,.25);
    --shadow-md: 0 20px 50px rgba(0,0,0,.35);
    --shadow-lg: 0 30px 100px rgba(0,0,0,.55);
}


/* =========================================================
   RESET
========================================================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: Inter, sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.6;
    transition:
        background .3s ease,
        color .3s ease;
}

button,
input,
select {
    font: inherit;
}

button {
    cursor: pointer;
}

a {
    color: inherit;
    text-decoration: none;
}

img {
    max-width: 100%;
}

.container {
    width: min(100% - 40px, var(--container));
    margin-inline: auto;
}


/* =========================================================
   UTILITIES
========================================================= */

.text-muted {
    color: var(--muted);
}

.text-center {
    text-align: center;
}

.gradient-text {
    background: linear-gradient(
        90deg,
        var(--secondary),
        var(--accent)
    );

    -webkit-background-clip: text;
    color: transparent;
}

.section {
    padding: 90px 0;
}

.section-header {
    text-align: center;
    margin-bottom: 45px;
}

.section-header h2 {
    font-family: Poppins;
    font-size: clamp(28px, 4vw, 42px);
    margin-bottom: 10px;
}

.section-header p {
    color: var(--muted);
}


/* =========================================================
   ANNOUNC<iENT BAR
========================================================= */

.announc<ient {
    background:
        linear-gradient(
            90deg,
            #4f46e5,
            #7c3aed,
            #06b6d4
        );

    color: white;
    text-align: center;

    padding: 9px 15px;

    font-size: 13px;
    font-weight: 600;
}

.announc<ient i {
    margin-right: 7px;
}


/* =========================================================
   HEADER
========================================================= */

header {
    position: sticky;
    top: 0;
    z-index: 1000;

    background: rgba(255,255,255,.82);
    border-bottom: 1px solid var(--border);

    backdrop-filter: blur(18px);

    transition: .3s;
}

[data-th<ie="dark"] header {
    background: rgba(7,11,20,.82);
}

.header-inner {
    min-height: 78px;

    display: flex;
    align-it<is: center;
    justify-content: space-between;

    gap: 25px;
}

.logo {
    display: flex;
    align-it<is: center;
    gap: 10px;

    font-family: Poppins;
    font-size: 22px;
    font-weight: 800;
}

.logo-mark {
    width: 40px;
    height: 40px;

    display: grid;
    place-it<is: center;

    border-radius: 12px;

    color: white;

    background:
        linear-gradient(
            135deg,
            var(--secondary),
            var(--accent)
        );

    box-shadow:
        0 8px 25px rgba(99,102,241,.35);
}

.main-nav {
    display: flex;
    align-it<is: center;
    gap: 8px;
}

.main-nav a {
    padding: 9px 13px;

    border-radius: 10px;

    color: var(--muted);

    font-size: 14px;
    font-weight: 600;

    transition: var(--transition);
}

.main-nav a:hover,
.main-nav a.active {
    color: var(--secondary);
    background: var(--surface-2);
}

.header-right {
    display: flex;
    align-it<is: center;
    gap: 10px;
}

.search-box {
    width: 250px;

    display: flex;
    align-it<is: center;

    gap: 10px;

    padding: 10px 14px;

    border: 1px solid var(--border);

    border-radius: 999px;

    background: var(--surface);

    transition: .3s;
}

.search-box:focus-within {
    width: 300px;

    border-color: var(--secondary);

    box-shadow:
        0 0 0 4px rgba(99,102,241,.1);
}

.search-box input {
    width: 100%;

    border: 0;
    outline: 0;

    color: var(--text);
    background: transparent;

    font-size: 13px;
}

.icon-btn {
    width: 42px;
    height: 42px;

    display: grid;
    place-it<is: center;

    border: 1px solid var(--border);

    border-radius: 12px;

    color: var(--text);

    background: var(--surface);

    transition: var(--transition);
}

.icon-btn:hover {
    color: white;

    background: var(--secondary);

    transform: translateY(-2px);
}

.cart-btn {
    position: relative;
}

.cart-count {
    position: absolute;

    top: -5px;
    right: -5px;

    width: 20px;
    height: 20px;

    display: grid;
    place-it<is: center;

    border-radius: 50%;

    background: var(--danger);

    color: white;

    font-size: 10px;
    font-weight: 800;
}

.mobile-toggle {
    display: none;
}


/* =========================================================
   HERO
========================================================= */

.hero {
    position: relative;

    min-height: 650px;

    display: flex;
    align-it<is: center;

    overflow: hidden;

    background:
        radial-gradient(
            circle at 10% 20%,
            rgba(99,102,241,.30),
            transparent 30%
        ),

        radial-gradient(
            circle at 90% 80%,
            rgba(6,182,212,.25),
            transparent 30%
        ),

        var(--bg);
}

.hero-content {
    max-width: 760px;

    position: relative;
    z-index: 2;
}

.hero-tag {
    display: inline-flex;
    align-it<is: center;
    gap: 8px;

    padding: 8px 13px;

    border: 1px solid var(--border);

    border-radius: 999px;

    background: var(--surface);

    color: var(--secondary);

    font-size: 12px;
    font-weight: 700;

    box-shadow: var(--shadow-sm);
}

.hero h1 {
    margin-top: 25px;

    font-family: Poppins;

    font-size: clamp(44px, 7vw, 82px);

    line-height: 1.02;

    letter-spacing: -3px;
}

.hero p {
    max-width: 650px;

    margin: 25px 0;

    color: var(--muted);

    font-size: 17px;
}

.hero-buttons {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
}

.btn {
    display: inline-flex;
    align-it<is: center;
    justify-content: center;

    gap: 9px;

    padding: 13px 20px;

    border: 0;

    border-radius: 12px;

    font-weight: 700;

    transition: .25s;
}

.btn-primary {
    color: white;

    background:
        linear-gradient(
            135deg,
            var(--secondary),
            var(--secondary-2)
        );

    box-shadow:
        0 12px 30px rgba(99,102,241,.30);
}

.btn-primary:hover {
    transform: translateY(-3px);

    box-shadow:
        0 18px 40px rgba(99,102,241,.40);
}

.btn-secondary {
    color: var(--text);

    background: var(--surface);

    border: 1px solid var(--border);
}

.btn-secondary:hover {
    transform: translateY(-3px);

    border-color: var(--secondary);
}

.hero-visual {
    position: absolute;

    right: -100px;
    top: 50%;

    transform: translateY(-50%);

    width: 520px;
    height: 520px;

    border-radius: 50%;

    background:
        linear-gradient(
            135deg,
            rgba(99,102,241,.18),
            rgba(6,182,212,.14)
        );

    filter: blur(1px);
}

.hero-card {
    position: absolute;

    right: 80px;
    top: 50%;

    transform:
        translateY(-50%)
        rotate(4deg);

    width: 380px;

    padding: 15px;

    border: 1px solid rgba(255,255,255,.25);

    border-radius: 25px;

    background:
        rgba(255,255,255,.12);

    backdrop-filter: blur(25px);

    box-shadow:
        var(--shadow-lg);

    animation: float 5s ease-in-out infinite;
}

.hero-card img {
    display: block;

    width: 100%;
    height: 390px;

    object-fit: cover;

    border-radius: 18px;
}

@keyframes float {

    0%,100% {
        transform:
            translateY(-50%)
            rotate(4deg);
    }

    50% {
        transform:
            translateY(calc(-50% - 15px))
            rotate(2deg);
    }
}


/* =========================================================
   STATS
========================================================= */

.stats {
    display: grid;

    grid-t<iplate-columns:
        repeat(4, 1fr);

    gap: 15px;

    margin-top: -45px;

    position: relative;
    z-index: 5;
}

.stat {
    padding: 25px;

    text-align: center;

    border: 1px solid var(--border);

    border-radius: 18px;

    background: var(--surface);

    box-shadow: var(--shadow-md);
}

.stat strong {
    display: block;

    font-size: 27px;

    font-family: Poppins;
}

.stat span {
    color: var(--muted);

    font-size: 13px;
}


/* =========================================================
   CATEGORIES
========================================================= */

.category-grid {
    display: grid;

    grid-t<iplate-columns:
        repeat(6, 1fr);

    gap: 16px;
}

.category {
    position: relative;

    padding: 25px 15px;

    text-align: center;

    border: 1px solid var(--border);

    border-radius: 18px;

    background: var(--surface);

    box-shadow: var(--shadow-sm);

    transition: .3s;

    cursor: pointer;
}

.category:hover,
.category.active {
    transform: translateY(-7px);

    border-color:
        rgba(99,102,241,.35);

    box-shadow: var(--shadow-md);
}

.category-icon {
    width: 58px;
    height: 58px;

    margin: auto auto 12px;

    display: grid;
    place-it<is: center;

    border-radius: 17px;

    color: var(--secondary);

    background:
        rgba(99,102,241,.1);

    font-size: 23px;
}

.category h3 {
    font-size: 14px;
}

.category small {
    color: var(--muted);

    font-size: 11px;
}


/* =========================================================
   PRODUCT TOOLBAR
========================================================= */

.product-toolbar {
    display: flex;

    align-it<is: center;
    justify-content: space-between;

    gap: 15px;

    margin-bottom: 25px;

    padding: 15px;

    border: 1px solid var(--border);

    border-radius: 15px;

    background: var(--surface);
}

.result-count {
    color: var(--muted);

    font-size: 13px;
}

.sort-select {
    padding: 10px 13px;

    border: 1px solid var(--border);

    border-radius: 10px;

    color: var(--text);

    background: var(--surface);

    outline: none;
}


/* =========================================================
   PRODUCTS
========================================================= */

.products-grid {
    display: grid;

    grid-t<iplate-columns:
        repeat(4, 1fr);

    gap: 22px;
}

.product-card {
    position: relative;

    overflow: hidden;

    border: 1px solid var(--border);

    border-radius: 20px;

    background: var(--surface);

    box-shadow: var(--shadow-sm);

    transition: .3s;
}

.product-card:hover {
    transform: translateY(-8px);

    box-shadow: var(--shadow-md);
}

.product-image {
    position: relative;

    overflow: hidden;

    background: var(--surface-2);
}

.product-image img {
    width: 100%;
    height: 245px;

    display: block;

    object-fit: cover;

    transition: .5s;
}

.product-card:hover .product-image img {
    transform: scale(1.07);
}

.badge {
    position: absolute;

    top: 13px;
    left: 13px;

    padding: 6px 9px;

    border-radius: 8px;

    color: white;

    background: var(--secondary);

    font-size: 10px;
    font-weight: 800;

    z-index: 2;
}

.badge.sale {
    background: var(--danger);
}

.wishlist {
    position: absolute;

    top: 12px;
    right: 12px;

    width: 38px;
    height: 38px;

    display: grid;
    place-it<is: center;

    border: 0;

    border-radius: 50%;

    color: var(--text);

    background: rgba(255,255,255,.92);

    z-index: 2;

    transition: .25s;
}

.wishlist:hover,
.wishlist.active {
    color: white;

    background: var(--danger);

    transform: scale(1.08);
}

.product-body {
    padding: 17px;
}

.product-category {
    color: var(--secondary);

    font-size: 11px;
    font-weight: 700;

    text-transform: uppercase;
}

.product-title {
    margin: 5px 0;

    font-size: 16px;
    font-weight: 700;
}

.rating {
    color: #f59e0b;

    font-size: 12px;
}

.rating span {
    color: var(--muted);
}

.price-row {
    display: flex;

    align-it<is: center;
    justify-content: space-between;

    margin-top: 13px;
}

.price {
    font-size: 20px;

    font-weight: 800;
}

.old-price {
    margin-left: 5px;

    color: var(--muted);

    text-decoration: line-through;

    font-size: 12px;
}

.add-cart {
    width: 100%;

    margin-top: 15px;

    padding: 11px;

    border: 0;

    border-radius: 11px;

    color: white;

    background: var(--primary);

    font-weight: 700;

    transition: .25s;
}

.add-cart:hover {
    background: var(--secondary);

    transform: translateY(-2px);
}


/* =========================================================
   FLASH DEAL
========================================================= */

.deal-section {
    overflow: hidden;

    position: relative;

    border-radius: 28px;

    background:
        linear-gradient(
            120deg,
            #111827,
            #312e81,
            #0e7490
        );

    color: white;
}

.deal-content {
    display: grid;

    grid-t<iplate-columns: 1fr 1fr;

    align-it<is: center;
}

.deal-info {
    padding: 70px;
}

.deal-info h2 {
    font-family: Poppins;

    font-size: clamp(35px,5vw,58px);

    line-height: 1.05;

    margin: 15px 0;
}

.deal-info p {
    color: #cbd5e1;

    max-width: 500px;
}

.countdown {
    display: flex;

    gap: 10px;

    margin: 30px 0;
}

.time-box {
    min-width: 75px;

    padding: 12px;

    text-align: center;

    border: 1px solid rgba(255,255,255,.15);

    border-radius: 13px;

    background: rgba(255,255,255,.08);

    backdrop-filter: blur(10px);
}

.time-box strong {
    display: block;

    font-size: 25px;
}

.time-box span {
    color: #cbd5e1;

    font-size: 10px;
}

.deal-image {
    height: 100%;

    min-height: 500px;
}

.deal-image img {
    width: 100%;
    height: 100%;

    object-fit: cover;
}


/* =========================================================
   TESTIMONIALS
========================================================= */

.testimonials {
    display: grid;

    grid-t<iplate-columns:
        repeat(3, 1fr);

    gap: 20px;
}

.testimonial {
    padding: 25px;

    border: 1px solid var(--border);

    border-radius: 18px;

    background: var(--surface);

    box-shadow: var(--shadow-sm);
}

.testimonial .stars {
    color: #f59e0b;

    margin-bottom: 15px;
}

.testimonial p {
    color: var(--muted);

    font-size: 14px;
}

.customer {
    display: flex;

    align-it<is: center;

    gap: 10px;

    margin-top: 20px;
}

.customer img {
    width: 45px;
    height: 45px;

    object-fit: cover;

    border-radius: 50%;
}


/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter {
    padding: 70px 30px;

    text-align: center;

    border-radius: 25px;

    background:
        linear-gradient(
            135deg,
            rgba(99,102,241,.12),
            rgba(6,182,212,.12)
        );

    border: 1px solid var(--border);
}

.newsletter h2 {
    font-family: Poppins;

    font-size: 35px;
}

.newsletter p {
    margin: 8px 0 25px;

    color: var(--muted);
}

.newsletter-form {
    max-width: 520px;

    display: flex;

    gap: 10px;

    margin: auto;
}

.newsletter-form input {
    flex: 1;

    min-width: 0;

    padding: 14px 18px;

    border: 1px solid var(--border);

    border-radius: 12px;

    color: var(--text);

    background: var(--surface);

    outline: none;
}


/* =========================================================
   FOOTER
========================================================= */

footer {
    margin-top: 70px;

    padding: 60px 0 25px;

    border-top: 1px solid var(--border);
}

.footer-grid {
    display: grid;

    grid-t<iplate-columns:
        2fr 1fr 1fr 1fr;

    gap: 40px;
}

.footer-brand p {
    max-width: 350px;

    margin-top: 15px;

    color: var(--muted);

    font-size: 14px;
}

.footer-column h4 {
    margin-bottom: 15px;
}

.footer-column a {
    display: block;

    margin-bottom: 10px;

    color: var(--muted);

    font-size: 13px;

    transition: .2s;
}

.footer-column a:hover {
    color: var(--secondary);
}

.socials {
    display: flex;

    gap: 8px;

    margin-top: 20px;
}

.copyright {
    margin-top: 45px;
    padding-top: 20px;

    border-top: 1px solid var(--border);

    text-align: center;

    color: var(--muted);

    font-size: 12px;
}


/* =========================================================
   CART DRAWER
========================================================= */

.overlay {
    position: fixed;

    inset: 0;

    z-index: 1999;

    background: rgba(0,0,0,.5);

    opacity: 0;

    pointer-events: none;

    transition: .3s;
}

.overlay.active {
    opacity: 1;

    pointer-events: auto;
}

.cart-drawer {
    position: fixed;

    top: 0;
    right: 0;

    z-index: 2000;

    width: min(440px,100%);

    height: 100vh;

    display: flex;
    flex-direction: column;

    background: var(--surface);

    box-shadow: -20px 0 70px rgba(0,0,0,.2);

    transform: translateX(100%);

    transition: .35s cubic-bezier(.77,0,.18,1);
}

.cart-drawer.active {
    transform: translateX(0);
}

.cart-header {
    display: flex;

    justify-content: space-between;

    align-it<is: center;

    padding: 20px;

    border-bottom: 1px solid var(--border);
}

.cart-header h3 {
    font-family: Poppins;
}

.cart-it<is {
    flex: 1;

    overflow-y: auto;

    padding: 20px;
}

.cart-it<i {
    display: grid;

    grid-t<iplate-columns: 70px 1fr auto;

    gap: 12px;

    align-it<is: center;

    padding: 13px 0;

    border-bottom: 1px solid var(--border);
}

.cart-it<i img {
    width: 70px;
    height: 70px;

    object-fit: cover;

    border-radius: 12px;
}

.cart-it<i h4 {
    font-size: 13px;
}

.cart-it<i small {
    color: var(--muted);
}

.qty-controls {
    display: flex;

    align-it<is: center;

    gap: 8px;

    margin-top: 7px;
}

.qty-controls button {
    width: 25px;
    height: 25px;

    border: 1px solid var(--border);

    border-radius: 6px;

    color: var(--text);

    background: var(--surface-2);
}

.r<iove-it<i {
    color: var(--danger);

    background: transparent;

    border: 0;
}

.cart-footer {
    padding: 20px;

    border-top: 1px solid var(--border);
}

.total-row {
    display: flex;

    justify-content: space-between;

    margin-bottom: 15px;

    font-size: 18px;

    font-weight: 800;
}


/* =========================================================
   QUICK VIEW MODAL
========================================================= */

.modal {
    position: fixed;

    inset: 0;

    z-index: 3000;

    display: grid;
    place-it<is: center;

    padding: 20px;

    background: rgba(0,0,0,.65);

    opacity: 0;

    pointer-events: none;

    transition: .3s;
}

.modal.active {
    opacity: 1;

    pointer-events: auto;
}

.modal-card {
    width: min(850px,100%);

    display: grid;

    grid-t<iplate-columns: 1fr 1fr;

    overflow: hidden;

    border-radius: 25px;

    background: var(--surface);

    box-shadow: var(--shadow-lg);

    transform: translateY(30px) scale(.97);

    transition: .3s;
}

.modal.active .modal-card {
    transform: translateY(0) scale(1);
}

.modal-image img {
    width: 100%;
    height: 100%;

    min-height: 450px;

    object-fit: cover;
}

.modal-info {
    position: relative;

    padding: 40px;
}

.modal-close {
    position: absolute;

    top: 18px;
    right: 18px;

    width: 38px;
    height: 38px;

    border: 0;

    border-radius: 50%;

    color: var(--text);

    background: var(--surface-2);
}

.modal-info h2 {
    margin: 15px 0;

    font-family: Poppins;

    font-size: 30px;
}

.modal-price {
    font-size: 28px;

    font-weight: 800;

    margin: 20px 0;
}


/* =========================================================
   TOAST
========================================================= */

.toast-container {
    position: fixed;

    right: 20px;
    bottom: 20px;

    z-index: 5000;

    display: flex;
    flex-direction: column;

    gap: 10px;
}

.toast {
    min-width: 280px;

    padding: 14px 17px;

    border-radius: 13px;

    color: white;

    background: #111827;

    box-shadow: var(--shadow-lg);

    animation:
        toastIn .35s ease forwards;
}

@keyframes toastIn {

    from {
        opacity: 0;
        transform: translateX(30px);
    }

    to {
        opacity: 1;
        transform: translateX(0);
    }

}


/* =========================================================
   SCROLL REVEAL
========================================================= */

.reveal {
    opacity: 0;

    transform: translateY(30px);

    transition:
        opacity .7s ease,
        transform .7s ease;
}

.reveal.visible {
    opacity: 1;

    transform: translateY(0);
}


/* =========================================================
   <iPTY STATE
========================================================= */

.<ipty-state {
    grid-column: 1/-1;

    padding: 70px 20px;

    text-align: center;

    color: var(--muted);
}

.<ipty-state i {
    font-size: 45px;

    margin-bottom: 15px;

    color: var(--secondary);
}


/* =========================================================
   MOBILE MENU
========================================================= */

.mobile-menu {
    display: none;

    padding: 15px 20px;

    border-top: 1px solid var(--border);

    background: var(--surface);
}

.mobile-menu a {
    display: block;

    padding: 12px;

    color: var(--muted);

    font-weight: 600;
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1100px) {

    .main-nav {
        display: none;
    }

    .mobile-toggle {
        display: grid;
    }

    .header-inner {
        gap: 10px;
    }

    .category-grid {
        grid-t<iplate-columns:
            repeat(3,1fr);
    }

    .products-grid {
        grid-t<iplate-columns:
            repeat(3,1fr);
    }

    .hero-card,
    .hero-visual {
        display: none;
    }

    .hero-content {
        max-width: 850px;
    }

}

@media(max-width:800px) {

    .search-box {
        width: 180px;
    }

    .search-box:focus-within {
        width: 220px;
    }

    .stats {
        grid-t<iplate-columns:
            repeat(2,1fr);
    }

    .products-grid {
        grid-t<iplate-columns:
            repeat(2,1fr);
    }

    .deal-content {
        grid-t<iplate-columns: 1fr;
    }

    .deal-info {
        padding: 45px 30px;
    }

    .deal-image {
        min-height: 300px;
    }

    .testimonials {
        grid-t<iplate-columns: 1fr;
    }

    .footer-grid {
        grid-t<iplate-columns:
            repeat(2,1fr);
    }

    .modal-card {
        grid-t<iplate-columns: 1fr;
        max-height: 90vh;
        overflow-y: auto;
    }

    .modal-image img {
        min-height: 260px;
        max-height: 300px;
    }

}

@media(max-width:600px) {

    .container {
        width: min(100% - 25px, var(--container));
    }

    .section {
        padding: 65px 0;
    }

    .header-right .search-box {
        display: none;
    }

    .hero {
        min-height: 560px;
    }

    .hero h1 {
        letter-spacing: -2px;
    }

    .stats {
        margin-top: -25px;

        grid-t<iplate-columns:
            repeat(2,1fr);
    }

    .stat {
        padding: 18px 10px;
    }

    .category-grid {
        grid-t<iplate-columns:
            repeat(2,1fr);
    }

    .products-grid {
        grid-t<iplate-columns: 1fr;
    }

    .product-image img {
        height: 280px;
    }

    .product-toolbar {
        align-it<is: stretch;
        flex-direction: column;
    }

    .sort-select {
        width: 100%;
    }

    .countdown {
        flex-wrap: wrap;
    }

    .newsletter-form {
        flex-direction: column;
    }

    .footer-grid {
        grid-t<iplate-columns: 1fr;
    }

    .modal-info {
        padding: 25px;
    }

}


/* =========================================================
   REDUCED MOTION
========================================================= */

@media(prefers-reduced-motion: reduce) {

    *,
    *::before,
    *::after {
        animation-duration: .01ms !important;
        animation-iteration-count: 1 !important;
        scroll-behavior: auto !important;
        transition-duration: .01ms !important;
    }

}

</style>
</head>


<body>

<!-- =======================================================
     ANNOUNC<iENT
======================================================= -->

<div class="announc<ient">
    <i class="fa-solid fa-truck-fast"></i>
    Free shipping on orders over $100 • Limited-time offers available
</div>


<!-- =======================================================
     HEADER
======================================================= -->

<header>

    <div class="container header-inner">

        <button
            class="icon-btn mobile-toggle"
            id="mobileToggle"
            aria-label="Open menu">

            <i class="fa-solid fa-bars"></i>

        </button>


        <a href="#" class="logo">

            <span class="logo-mark">
                <i class="fa-solid fa-bolt"></i>
            </span>

            <span>
                Nexus<span class="gradient-text">Shop</span>
            </span>

        </a>


        <nav class="main-nav">

            <a href="#" class="active">
                Home
            </a>

            <a href="#categories">
                Categories
            </a>

            <a href="#products">
                Products
            </a>

            <a href="#deals">
                Deals
            </a>

            <a href="#about">
                About
            </a>

        </nav>


        <div class="header-right">

            <div class="search-box">

                <i class="fa-solid fa-magnifying-glass"></i>

                <input
                    id="searchInput"
                    type="search"
                    placeholder="Search products...">

            </div>


            <button
                class="icon-btn"
                id="th<ieToggle"
                aria-label="Toggle th<ie">

                <i class="fa-solid fa-moon"></i>

            </button>


            <button
                class="icon-btn"
                aria-label="Account">

                <i class="fa-regular fa-user"></i>

            </button>


            <button
                class="icon-btn cart-btn"
                id="cartButton"
                aria-label="Shopping cart">

                <i class="fa-solid fa-bag-shopping"></i>

                <span
                    class="cart-count"
                    id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>


    <div
        class="mobile-menu"
        id="mobil<ienu">

        <a href="#">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Products</a>
        <a href="#deals">Deals</a>
        <a href="#about">About</a>

    </div>

</header>


<!-- =======================================================
     HERO
======================================================= -->

<main>

<section class="hero">

    <div class="container">

        <div class="hero-content reveal">

            <span class="hero-tag">

                <i class="fa-solid fa-sparkles"></i>

                New season • Pr<iium collection

            </span>


            <h1>

                Upgrade your
                <span class="gradient-text">
                    everyday.
                </span>

            </h1>


            <p>

                Discover pr<iium technology, fashion and lifestyle
                products curated for people who expect more.

            </p>


            <div class="hero-buttons">

                <button
                    class="btn btn-primary"
                    id="shopNow">

                    Shop Collection

                    <i class="fa-solid fa-arrow-right"></i>

                </button>


                <button
                    class="btn btn-secondary"
                    id="heroDeals">

                    Explore Deals

                </button>

            </div>

        </div>

    </div>


    <div class="hero-visual"></div>


    <div class="hero-card">

        <img
            src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=900&q=90"
            alt="Pr<iium laptop">

    </div>

</section>


<!-- =======================================================
     STATS
======================================================= -->

<section class="container">

    <div class="stats reveal">

        <div class="stat">
            <strong>50K+</strong>
            <span>Happy Customers</span>
        </div>

        <div class="stat">
            <strong>4.9/5</strong>
            <span>Average Rating</span>
        </div>

        <div class="stat">
            <strong>24/7</strong>
            <span>Customer Support</span>
        </div>

        <div class="stat">
            <strong>100%</strong>
            <span>Secure Checkout</span>
        </div>

    </div>

</section>


<!-- =======================================================
     CATEGORIES
======================================================= -->

<section
    class="section"
    id="categories">

    <div class="container">

        <div class="section-header reveal">

            <h2>
                Shop by
                <span class="gradient-text">
                    category
                </span>
            </h2>

            <p>
                Explore our most popular collections.
            </p>

        </div>


        <div
            class="category-grid"
            id="categoryGrid">

        </div>

    </div>

</section>


<!-- =======================================================
     PRODUCTS
======================================================= -->

<section
    class="section"
    id="products">

    <div class="container">

        <div class="section-header reveal">

            <h2>
                Trending
                <span class="gradient-text">
                    products
                </span>
            </h2>

            <p>
                Popular products selected by our community.
            </p>

        </div>


        <div class="product-toolbar">

            <span
                class="result-count"
                id="resultCount">
                Showing products
            </span>


            <select
                class="sort-select"
                id="sortSelect">

                <option value="featured">
                    Sort: Featured
                </option>

                <option value="price-low">
                    Price: Low to High
                </option>

                <option value="price-high">
                    Price: High to Low
                </option>

                <option value="rating">
                    Highest Rated
                </option>

                <option value="name">
                    Name A-Z
                </option>

            </select>

        </div>


        <div
            class="products-grid"
            id="productsGrid">

        </div>

    </div>

</section>


<!-- =======================================================
     FLASH SALE
======================================================= -->

<section
    class="section container"
    id="deals">

    <div class="deal-section reveal">

        <div class="deal-content">

            <div class="deal-info">

                <span class="hero-tag">
                    <i class="fa-solid fa-bolt"></i>
                    Flash Sale
                </span>


                <h2>
                    Power meets
                    <span style="color:#67e8f9">
                        performance.
                    </span>
                </h2>


                <p>

                    Pr<iium laptop technology with powerful
                    performance, stunning design and all-day battery.

                </p>


                <div class="countdown">

                    <div class="time-box">
                        <strong id="days">00</strong>
                        <span>Days</span>
                    </div>

                    <div class="time-box">
                        <strong id="hours">00</strong>
                        <span>Hours</span>
                    </div>

                    <div class="time-box">
                        <strong id="minutes">00</strong>
                        <span>Minutes</span>
                    </div>

                    <div class="time-box">
                        <strong id="seconds">00</strong>
                        <span>Seconds</span>
                    </div>

                </div>


                <button
                    class="btn btn-primary"
                    id="dealButton">

                    Get Deal

                    <i class="fa-solid fa-arrow-right"></i>

                </button>

            </div>


            <div class="deal-image">

                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=90"
                    alt="Laptop flash sale">

            </div>

        </div>

    </div>

</section>


<!-- =======================================================
     TESTIMONIALS
======================================================= -->

<section class="section">

    <div class="container">

        <div class="section-header reveal">

            <h2>
                Loved by
                <span class="gradient-text">
                    thousands.
                </span>
            </h2>

            <p>
                See what our customers have to say.
            </p>

        </div>


        <div class="testimonials">

            <article class="testimonial reveal">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    "Amazing shopping experience. The product
                    quality was excellent and delivery was extr<iely fast."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                        alt="Customer">

                    <div>
                        <strong>Ava Martin</strong>
                        <small class="text-muted">
                            Verified customer
                        </small>
                    </div>

                </div>

            </article>


            <article class="testimonial reveal">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    "The website is incredibly easy to use.
                    Checkout was smooth and the support team was fantastic."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                        alt="Customer">

                    <div>
                        <strong>Michael Lee</strong>
                        <small class="text-muted">
                            Frequent buyer
                        </small>
                    </div>

                </div>

            </article>


            <article class="testimonial reveal">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    "Great selection, competitive prices and
                    the products arrived exactly as described."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                        alt="Customer">

                    <div>
                        <strong>Sophia Wilson</strong>
                        <small class="text-muted">
                            Verified customer
                        </small>
                    </div>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- =======================================================
     NEWSLETTER
======================================================= -->

<section class="section">

    <div class="container">

        <div class="newsletter reveal">

            <h2>
                Stay in the loop.
            </h2>

            <p>
                Get exclusive offers, new arrivals and product updates.
            </p>


            <form
                class="newsletter-form"
                id="newsletterForm">

                <input
                    type="<iail"
                    id="<iailInput"
                    placeholder="Enter your <iail"
                    required>

                <button
                    class="btn btn-primary">

                    Subscribe

                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- =======================================================
     FOOTER
======================================================= -->

<footer id="about">

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="logo">

                    <span class="logo-mark">
                        <i class="fa-solid fa-bolt"></i>
                    </span>

                    Nexus<span class="gradient-text">
                        Shop
                    </span>

                </a>


                <p>

                    A modern shopping experience designed
                    around pr<iium products, simplicity and speed.

                </p>


                <div class="socials">

                    <button class="icon-btn">
                        <i class="fa-brands fa-github"></i>
                    </button>

                    <button class="icon-btn">
                        <i class="fa-brands fa-linkedin"></i>
                    </button>

                    <button class="icon-btn">
                        <i class="fa-brands fa-instagram"></i>
                    </button>

                    <button class="icon-btn">
                        <i class="fa-brands fa-x-twitter"></i>
                    </button>

                </div>

            </div>


            <div class="footer-column">

                <h4>Company</h4>

                <a href="#">About Us</a>
                <a href="#">Careers</a>
                <a href="#">Press</a>
                <a href="#">Blog</a>

            </div>


            <div class="footer-column">

                <h4>Support</h4>

                <a href="#">Help Center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Contact</a>

            </div>


            <div class="footer-column">

                <h4>Legal</h4>

                <a href="#">Privacy</a>
                <a href="#">Terms</a>
                <a href="#">Security</a>
                <a href="#">Cookies</a>

            </div>

        </div>


        <div class="copyright">

            © <span id="year"></span>
            NexusShop. All rights reserved.

        </div>

    </div>

</footer>


<!-- =======================================================
     CART DRAWER
======================================================= -->

<div
    class="overlay"
    id="overlay">
</div>


<aside
    class="cart-drawer"
    id="cartDrawer">

    <div class="cart-header">

        <h3>
            Shopping Cart
        </h3>

        <button
            class="icon-btn"
            id="closeCart">

            <i class="fa-solid fa-xmark"></i>

        </button>

    </div>


    <div
        class="cart-it<is"
        id="cartIt<is">

    </div>


    <div class="cart-footer">

        <div class="total-row">

            <span>Total</span>

            <span id="cartTotal">
                $0
            </span>

        </div>


        <button
            class="btn btn-primary"
            style="width:100%"
            id="checkoutButton">

            Checkout

            <i class="fa-solid fa-lock"></i>

        </button>

    </div>

</aside>


<!-- =======================================================
     QUICK VIEW MODAL
======================================================= -->

<div
    class="modal"
    id="productModal">

    <div class="modal-card">

        <div class="modal-image">

            <img
                id="modalImage"
                src=""
                alt="Product">

        </div>


        <div class="modal-info">

            <button
                class="modal-close"
                id="clos<iodal">

                <i class="fa-solid fa-xmark"></i>

            </button>


            <span
                class="product-category"
                id="modalCategory">
            </span>


            <h2 id="modalTitle">
            </h2>


            <div
                class="rating"
                id="modalRating">
            </div>


            <div
                class="modal-price"
                id="modalPrice">
            </div>


            <p class="text-muted">

                Pr<iium quality product with carefully
                selected materials and excellent performance.

            </p>


            <button
                class="btn btn-primary"
                style="width:100%;margin-top:25px"
                id="modalAdd">

                <i class="fa-solid fa-cart-plus"></i>

                Add to Cart

            </button>

        </div>

    </div>

</div>


<!-- =======================================================
     TOAST
======================================================= -->

<div
    class="toast-container"
    id="toastContainer">
</div>


<script>

/* =========================================================
   PRODUCT DATA
========================================================= */

const PRODUCTS = [

    {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        category: "Smartphones",
        icon: "fa-mobile-screen-button",
        img:
        "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=800&q=90"
    },

    {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        badge: "Pr<iium",
        category: "Laptops",
        icon: "fa-laptop",
        img:
        "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=800&q=90"
    },

    {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-13%",
        category: "Accessories",
        icon: "fa-clock",
        img:
        "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=90"
    },

    {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        badge: "Trending",
        category: "Footwear",
        icon: "fa-shoe-prints",
        img:
        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=90"
    },

    {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        category: "Cameras",
        icon: "fa-camera",
        img:
        "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=800&q=90"
    },

    {
        id: 6,
        title: "Pr<iium Fragrance",
        price: 120,
        rating: 5,
        reviews: 189,
        badge: "Best Seller",
        category: "Beauty",
        icon: "fa-spray-can-sparkles",
        img:
        "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=800&q=90"
    },

    {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "-20%",
        category: "Accessories",
        icon: "fa-bag-shopping",
        img:
        "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=90"
    },

    {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        badge: "Popular",
        category: "Audio",
        icon: "fa-headphones",
        img:
        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=90"
    }

];


/* =========================================================
   CATEGORIES
========================================================= */

const CATEGORIES = [

    {
        name: "Smartphones",
        icon: "fa-mobile-screen-button"
    },

    {
        name: "Laptops",
        icon: "fa-laptop"
    },

    {
        name: "Audio",
        icon: "fa-headphones"
    },

    {
        name: "Cameras",
        icon: "fa-camera"
    },

    {
        name: "Footwear",
        icon: "fa-shoe-prints"
    },

    {
        name: "Accessories",
        icon: "fa-bag-shopping"
    }

];


/* =========================================================
   STATE
========================================================= */

let cart =
    JSON.parse(
        localStorage.getIt<i("nexus-cart")
    ) || [];

let wishlist =
    JSON.parse(
        localStorage.getIt<i("nexus-wishlist")
    ) || [];

let activeCategory = "All";

let currentModalProduct = null;


/* =========================================================
   DOM
========================================================= */

const productsGrid =
    document.getEl<ientById("productsGrid");

const categoryGrid =
    document.getEl<ientById("categoryGrid");

const searchInput =
    document.getEl<ientById("searchInput");

const sortSelect =
    document.getEl<ientById("sortSelect");

const cartCount =
    document.getEl<ientById("cartCount");

const cartIt<is =
    document.getEl<ientById("cartIt<is");

const cartTotal =
    document.getEl<ientById("cartTotal");

const cartDrawer =
    document.getEl<ientById("cartDrawer");

const overlay =
    document.getEl<ientById("overlay");

const productModal =
    document.getEl<ientById("productModal");


/* =========================================================
   SAVE STATE
========================================================= */

function saveState() {

    localStorage.setIt<i(
        "nexus-cart",
        JSON.stringify(cart)
    );

    localStorage.setIt<i(
        "nexus-wishlist",
        JSON.stringify(wishlist)
    );

}


/* =========================================================
   TOAST
========================================================= */

function toast(message) {

    const el<ient =
        document.createEl<ient("div");

    el<ient.className = "toast";

    el<ient.innerHTML =
        `<i class="fa-solid fa-circle-check"></i>
         &nbsp; ${message}`;

    document
        .getEl<ientById("toastContainer")
        .appendChild(el<ient);

    setTimeout(() => {

        el<ient.style.opacity = "0";

        el<ient.style.transform =
            "translateX(30px)";

        setTimeout(
            () => el<ient.r<iove(),
            300
        );

    }, 2500);

}


/* =========================================================
   RENDER CATEGORIES
========================================================= */

function renderCategories() {

    categoryGrid.innerHTML = "";

    const all =
        document.createEl<ient("div");

    all.className =
        `category ${activeCategory === "All" ? "active" : ""}`;

    all.innerHTML = `
        <div class="category-icon">
            <i class="fa-solid fa-layer-group"></i>
        </div>

        <h3>All Products</h3>

        <small>
            ${PRODUCTS.length} products
        </small>
    `;

    all.onclick = () => {

        activeCategory = "All";

        renderCategories();
        renderProducts();

    };

    categoryGrid.appendChild(all);


    CATEGORIES.forEach(category => {

        const count =
            PRODUCTS.filter(
                p => p.category === category.name
            ).length;

        const el<ient =
            document.createEl<ient("div");

        el<ient.className =
            `category ${activeCategory === category.name ? "active" : ""}`;

        el<ient.innerHTML = `

            <div class="category-icon">
                <i class="fa-solid ${category.icon}"></i>
            </div>

            <h3>${category.name}</h3>

            <small>
                ${count} products
            </small>

        `;

        el<ient.onclick = () => {

            activeCategory =
                category.name;

            renderCategories();
            renderProducts();

            document
                .getEl<ientById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        };

        categoryGrid.appendChild(el<ient);

    });

}


/* =========================================================
   FILTER PRODUCTS
========================================================= */

function getFilteredProducts() {

    let products =
        [...PRODUCTS];

    const query =
        searchInput.value
            .trim()
            .toLowerCase();


    if (activeCategory !== "All") {

        products =
            products.filter(
                p =>
                    p.category ===
                    activeCategory
            );

    }


    if (query) {

        products =
            products.filter(p =>

                p.title
                    .toLowerCase()
                    .includes(query)

                ||

                p.category
                    .toLowerCase()
                    .includes(query)

            );

    }


    switch(sortSelect.value) {

        case "price-low":

            products.sort(
                (a,b) =>
                    a.price - b.price
            );

            break;


        case "price-high":

            products.sort(
                (a,b) =>
                    b.price - a.price
            );

            break;


        case "rating":

            products.sort(
                (a,b) =>
                    b.rating - a.rating
            );

            break;


        case "name":

            products.sort(
                (a,b) =>
                    a.title.localeCompare(
                        b.title
                    )
            );

            break;

    }


    return products;

}


/* =========================================================
   RENDER PRODUCTS
========================================================= */

function renderProducts() {

    const products =
        getFilteredProducts();

    productsGrid.innerHTML = "";


    document.getEl<ientById(
        "resultCount"
    ).textContent =
        `Showing ${products.length} of ${PRODUCTS.length} products`;


    if (!products.length) {

        productsGrid.innerHTML = `

            <div class="<ipty-state">

                <i class="fa-solid fa-box-open"></i>

                <h3>
                    No products found
                </h3>

                <p>
                    Try another search or category.
                </p>

            </div>

        `;

        return;

    }


    products.forEach(product => {

        const isWishlisted =
            wishlist.includes(product.id);


        const card =
            document.createEl<ient("article");

        card.className =
            "product-card reveal";


        card.innerHTML = `

            <div class="product-image">

                ${
                    product.badge
                    ?
                    `<span class="badge ${
                        product.badge.includes("%")
                        ? "sale"
                        : ""
                    }">
                        ${product.badge}
                    </span>`
                    : ""
                }


                <button
                    class="wishlist ${
                        isWishlisted ? "active" : ""
                    }"
                    data-wishlist="${product.id}">

                    <i class="${
                        isWishlisted
                        ? "fa-solid"
                        : "fa-regular"
                    } fa-heart"></i>

                </button>


                <img
                    src="${product.img}"
                    alt="${product.title}"
                    loading="lazy">

            </div>


            <div class="product-body">

                <span class="product-category">
                    ${product.category}
                </span>


                <h3 class="product-title">
                    ${product.title}
                </h3>


                <div class="rating">

                    ${"★".repeat(product.rating)}

                    <span>
                        (${product.reviews})
                    </span>

                </div>


                <div class="price-row">

                    <div>

                        <span class="price">
                            $${product.price.toLocaleString()}
                        </span>

                        ${
                            product.oldPrice
                            ?
                            `<span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </span>`
                            : ""
                        }

                    </div>

                </div>


                <button
                    class="add-cart"
                    data-cart="${product.id}">

                    <i class="fa-solid fa-cart-plus"></i>

                    Add to Cart

                </button>


                <button
                    class="btn btn-secondary"
                    style="width:100%;margin-top:8px"
                    data-view="${product.id}">

                    <i class="fa-regular fa-eye"></i>

                    Quick View

                </button>

            </div>

        `;


        productsGrid.appendChild(card);

    });


    bindProductEvents();

    observeReveals();

}


/* =========================================================
   PRODUCT EVENTS
========================================================= */

function bindProductEvents() {

    document
        .querySelectorAll("[data-cart]")
        .forEach(button => {

            button.onclick = () => {

                addToCart(
                    Number(
                        button.dataset.cart
                    )
                );

            };

        });


    document
        .querySelectorAll("[data-wishlist]")
        .forEach(button => {

            button.onclick = () => {

                toggleWishlist(
                    Number(
                        button.dataset.wishlist
                    )
                );

            };

        });


    document
        .querySelectorAll("[data-view]")
        .forEach(button => {

            button.onclick = () => {

                openProductModal(
                    Number(
                        button.dataset.view
                    )
                );

            };

        });

}


/* =========================================================
   CART
========================================================= */

function addToCart(id) {

    const existing =
        cart.find(
            it<i => it<i.id === id
        );


    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            id,
            quantity: 1
        });

    }


    saveState();
    renderCart();

    toast("Product added to cart");

}


function updateQuantity(id, change) {

    const it<i =
        cart.find(
            it<i => it<i.id === id
        );

    if (!it<i) return;


    it<i.quantity += change;


    if (it<i.quantity <= 0) {

        cart =
            cart.filter(
                it<i => it<i.id !== id
            );

    }


    saveState();
    renderCart();

}


function r<ioveFromCart(id) {

    cart =
        cart.filter(
            it<i => it<i.id !== id
        );

    saveState();
    renderCart();

    toast("Product r<ioved");

}


/* =========================================================
   RENDER CART
========================================================= */

function renderCart() {

    const totalIt<is =
        cart.reduce(
            (sum,it<i) =>
                sum + it<i.quantity,
            0
        );


    cartCount.textContent =
        totalIt<is;


    if (!cart.length) {

        cartIt<is.innerHTML = `

            <div class="<ipty-state">

                <i class="fa-solid fa-cart-shopping"></i>

                <h3>
                    Your cart is <ipty
                </h3>

                <p>
                    Add something you love.
                </p>

            </div>

        `;

        cartTotal.textContent =
            "$0";

        return;

    }


    let total = 0;


    cartIt<is.innerHTML =
        cart.map(it<i => {

            const product =
                PRODUCTS.find(
                    p => p.id === it<i.id
                );


            if (!product)
                return "";


            total +=
                product.price *
                it<i.quantity;


            return `

                <div class="cart-it<i">

                    <img
                        src="${product.img}"
                        alt="${product.title}">


                    <div>

                        <h4>
                            ${product.title}
                        </h4>

                        <small>
                            $${product.price.toLocaleString()}
                        </small>


                        <div class="qty-controls">

                            <button
                                onclick="updateQuantity(${product.id},-1)">
                                −
                            </button>

                            <strong>
                                ${it<i.quantity}
                            </strong>

                            <button
                                onclick="updateQuantity(${product.id},1)">
                                +
                            </button>

                        </div>

                    </div>


                    <button
                        class="r<iove-it<i"
                        onclick="r<ioveFromCart(${product.id})">

                        <i class="fa-solid fa-trash"></i>

                    </button>

                </div>

            `;

        }).join("");


    cartTotal.textContent =
        `$${total.toLocaleString()}`;

}


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(id) {

    if (wishlist.includes(id)) {

        wishlist =
            wishlist.filter(
                it<i => it<i !== id
            );

        toast("R<ioved from wishlist");

    } else {

        wishlist.push(id);

        toast("Added to wishlist");

    }


    saveState();
    renderProducts();

}


/* =========================================================
   CART DRAWER
========================================================= */

function openCart() {

    cartDrawer.classList.add("active");

    overlay.classList.add("active");

}


function closeCart() {

    cartDrawer.classList.r<iove("active");

    overlay.classList.r<iove("active");

}


document
    .getEl<ientById("cartButton")
    .onclick = openCart;


document
    .getEl<ientById("closeCart")
    .onclick = closeCart;


overlay.onclick = closeCart;


/* =========================================================
   QUICK VIEW
========================================================= */

function openProductModal(id) {

    const product =
        PRODUCTS.find(
            p => p.id === id
        );

    if (!product) return;


    currentModalProduct =
        product;


    document.getEl<ientById(
        "modalImage"
    ).src = product.img;


    document.getEl<ientById(
        "modalTitle"
    ).textContent =
        product.title;


    document.getEl<ientById(
        "modalCategory"
    ).textContent =
        product.category;


    document.getEl<ientById(
        "modalPrice"
    ).textContent =
        `$${product.price.toLocaleString()}`;


    document.getEl<ientById(
        "modalRating"
    ).innerHTML =
        `${"★".repeat(product.rating)}
         <span>(${product.reviews} reviews)</span>`;


    productModal.classList.add("active");

}


function closeProductModal() {

    productModal.classList.r<iove("active");

}


document
    .getEl<ientById("clos<iodal")
    .onclick =
    closeProductModal;


productModal.onclick = event => {

    if (
        event.target ===
        productModal
    ) {

        closeProductModal();

    }

};


document
    .getEl<ientById("modalAdd")
    .onclick = () => {

        if (!currentModalProduct)
            return;

        addToCart(
            currentModalProduct.id
        );

        closeProductModal();

    };


/* =========================================================
   SEARCH
========================================================= */

searchInput.addEventListener(
    "input",
    renderProducts
);


/* =========================================================
   SORT
========================================================= */

sortSelect.addEventListener(
    "change",
    renderProducts
);


/* =========================================================
   TH<iE
========================================================= */

const th<ieToggle =
    document.getEl<ientById(
        "th<ieToggle"
    );


const savedTh<ie =
    localStorage.getIt<i(
        "nexus-th<ie"
    );


if (savedTh<ie) {

    document.documentEl<ient
        .dataset.th<ie =
        savedTh<ie;

}


function updateTh<ieIcon() {

    const dark =
        document.documentEl<ient
            .dataset.th<ie === "dark";


    th<ieToggle.innerHTML =
        dark

        ? `<i class="fa-solid fa-sun"></i>`

        : `<i class="fa-solid fa-moon"></i>`;

}


th<ieToggle.onclick = () => {

    const current =
        document.documentEl<ient
            .dataset.th<ie;


    const next =
        current === "dark"
        ? "light"
        : "dark";


    document.documentEl<ient
        .dataset.th<ie =
        next;


    localStorage.setIt<i(
        "nexus-th<ie",
        next
    );


    updateTh<ieIcon();

};


updateTh<ieIcon();


/* =========================================================
   MOBILE MENU
========================================================= */

const mobileToggle =
    document.getEl<ientById(
        "mobileToggle"
    );

const mobil<ienu =
    document.getEl<ientById(
        "mobil<ienu"
    );


mobileToggle.onclick = () => {

    const open =
        mobil<ienu.style.display ===
        "block";


    mobil<ienu.style.display =
        open
        ? "none"
        : "block";

};


mobil<ienu
    .querySelectorAll("a")
    .forEach(link => {

        link.onclick = () => {

            mobil<ienu.style.display =
                "none";

        };

    });


/* =========================================================
   HERO BUTTONS
========================================================= */

document
    .getEl<ientById("shopNow")
    .onclick = () => {

        document
            .getEl<ientById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    };


document
    .getEl<ientById("heroDeals")
    .onclick = () => {

        document
            .getEl<ientById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });

    };


document
    .getEl<ientById("dealButton")
    .onclick = () => {

        addToCart(2);

        openCart();

    };


/* =========================================================
   CHECKOUT
========================================================= */

document
    .getEl<ientById("checkoutButton")
    .onclick = () => {

        if (!cart.length) {

            toast(
                "Your cart is <ipty"
            );

            return;

        }


        toast(
            "Checkout integration ready"
        );

    };


/* =========================================================
   NEWSLETTER
========================================================= */

document
    .getEl<ientById("newsletterForm")
    .onsubmit = event => {

        event.preventDefault();


        const <iail =
            document.getEl<ientById(
                "<iailInput"
            ).value.trim();


        if (!<iail) return;


        toast(
            "Thanks! You're subscribed."
        );


        event.target.reset();

    };


/* =========================================================
   COUNTDOWN
========================================================= */

const saleEnd =
    Date.now()
    +
    (
        2 * 24 * 60 * 60 * 1000
        +
        8 * 60 * 60 * 1000
        +
        35 * 60 * 1000
    );


function updateCountdown() {

    const difference =
        saleEnd - Date.now();


    if (difference <= 0) {

        return;

    }


    const days =
        Math.floor(
            difference /
            (1000 * 60 * 60 * 24)
        );


    const hours =
        Math.floor(
            difference /
            (1000 * 60 * 60)
        ) % 24;


    const minutes =
        Math.floor(
            difference /
            (1000 * 60)
        ) % 60;


    const seconds =
        Math.floor(
            difference /
            1000
        ) % 60;


    document.getEl<ientById(
        "days"
    ).textContent =
        String(days).padStart(2,"0");


    document.getEl<ientById(
        "hours"
    ).textContent =
        String(hours).padStart(2,"0");


    document.getEl<ientById(
        "minutes"
    ).textContent =
        String(minutes).padStart(2,"0");


    document.getEl<ientById(
        "seconds"
    ).textContent =
        String(seconds).padStart(2,"0");

}


setInterval(
    updateCountdown,
    1000
);

updateCountdown();


/* =========================================================
   SCROLL REVEAL
========================================================= */

function observeReveals() {

    const el<ients =
        document.querySelectorAll(
            ".reveal:not(.visible)"
        );


    if (
        !("IntersectionObserver"
            in window)
    ) {

        el<ients.forEach(
            el =>
                el.classList.add(
                    "visible"
                )
        );

        return;

    }


    const observer =
        new IntersectionObserver(
            entries => {

                entries.forEach(
                    entry => {

                        if (
                            entry.isIntersecting
                        ) {

                            entry.target
                                .classList
                                .add("visible");

                            observer.unobserve(
                                entry.target
                            );

                        }

                    }
                );

            },
            {
                threshold: .12
            }
        );


    el<ients.forEach(
        el<ient =>
            observer.observe(el<ient)
    );

}


/* =========================================================
   KEYBOARD SHORTCUTS
========================================================= */

document.addEventListener(
    "keydown",
    event => {

        if (
            event.key ===
            "Escape"
        ) {

            closeCart();
            closeProductModal();

        }


        if (
            event.key === "/" &&
            document.activeEl<ient.tagName !==
            "INPUT"
        ) {

            event.preventDefault();

            searchInput.focus();

        }

    }
);


/* =========================================================
   INITIALIZATION
========================================================= */

document.getEl<ientById(
    "year"
).textContent =
    new Date().getFullYear();


renderCategories();

renderProducts();

renderCart();

observeReveals();

</script>

</body>

