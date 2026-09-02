<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Premium Shopping</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Manrope:wght@600;700;800&display=swap" rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    >

    <style>
        :root {
            --primary: #111827;
            --primary-soft: #1f2937;
            --accent: #6366f1;
            --accent-dark: #4f46e5;
            --accent-light: #eef2ff;

            --white: #ffffff;
            --black: #000000;

            --bg: #f8fafc;
            --surface: #ffffff;
            --surface-2: #f1f5f9;

            --text: #111827;
            --text-soft: #64748b;
            --border: #e2e8f0;

            --success: #16a34a;
            --danger: #ef4444;
            --warning: #f59e0b;

            --radius-sm: 10px;
            --radius: 18px;
            --radius-lg: 28px;

            --shadow-sm: 0 4px 15px rgba(15, 23, 42, .05);
            --shadow: 0 15px 45px rgba(15, 23, 42, .08);
            --shadow-lg: 0 25px 70px rgba(15, 23, 42, .14);

            --container: 1240px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        body.no-scroll {
            overflow: hidden;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        img {
            max-width: 100%;
        }

        .container {
            width: min(var(--container), calc(100% - 40px));
            margin: auto;
        }

        /* ========================================
           TOP BAR
        ======================================== */

        .topbar {
            background: #0f172a;
            color: #cbd5e1;
            font-size: 12px;
        }

        .topbar-inner {
            min-height: 36px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
        }

        .topbar-left,
        .topbar-right {
            display: flex;
            align-items: center;
            gap: 18px;
        }

        .topbar i {
            margin-right: 6px;
            color: #818cf8;
        }

        /* ========================================
           HEADER
        ======================================== */

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, .92);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(226, 232, 240, .8);
        }

        .header-main {
            min-height: 76px;
            display: flex;
            align-items: center;
            gap: 35px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            flex-shrink: 0;
        }

        .logo-icon {
            width: 40px;
            height: 40px;
            border-radius: 12px;
            display: grid;
            place-items: center;
            color: white;
            background: linear-gradient(135deg, #6366f1, #8b5cf6);
            box-shadow: 0 8px 20px rgba(99, 102, 241, .25);
        }

        .logo-text {
            font-family: Manrope, sans-serif;
            font-size: 21px;
            font-weight: 800;
            letter-spacing: -.5px;
        }

        .logo-text span {
            color: var(--accent);
        }

        .desktop-nav {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .desktop-nav a {
            padding: 9px 13px;
            border-radius: 9px;
            font-size: 14px;
            font-weight: 600;
            color: #475569;
            transition: .2s ease;
        }

        .desktop-nav a:hover,
        .desktop-nav a.active {
            background: var(--accent-light);
            color: var(--accent);
        }

        .header-search {
            margin-left: auto;
            width: min(320px, 30vw);
            position: relative;
        }

        .header-search input {
            width: 100%;
            height: 42px;
            padding: 0 42px 0 42px;
            border: 1px solid var(--border);
            border-radius: 12px;
            outline: none;
            background: #f8fafc;
            color: var(--text);
            transition: .2s ease;
        }

        .header-search input:focus {
            background: white;
            border-color: #a5b4fc;
            box-shadow: 0 0 0 4px rgba(99, 102, 241, .08);
        }

        .search-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #94a3b8;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 7px;
        }

        .header-btn {
            width: 42px;
            height: 42px;
            border: 0;
            background: transparent;
            color: #334155;
            border-radius: 12px;
            display: grid;
            place-items: center;
            position: relative;
            transition: .2s ease;
        }

        .header-btn:hover {
            background: #f1f5f9;
            color: var(--accent);
        }

        .cart-badge {
            position: absolute;
            top: 1px;
            right: 0;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            background: var(--accent);
            color: white;
            font-size: 10px;
            font-weight: 800;
            display: grid;
            place-items: center;
        }

        .mobile-menu-btn {
            display: none;
        }

        /* ========================================
           HERO
        ======================================== */

        .hero {
            padding: 24px 0 0;
        }

        .hero-card {
            min-height: 510px;
            border-radius: var(--radius-lg);
            overflow: hidden;
            position: relative;
            display: flex;
            align-items: center;
            background:
                linear-gradient(
                    90deg,
                    rgba(7, 15, 30, .95) 0%,
                    rgba(7, 15, 30, .80) 42%,
                    rgba(7, 15, 30, .15) 100%
                ),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90")
                center / cover;
            box-shadow: var(--shadow-lg);
        }

        .hero-content {
            max-width: 620px;
            padding: 60px;
            color: white;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 7px 12px;
            border-radius: 999px;
            background: rgba(255, 255, 255, .1);
            border: 1px solid rgba(255, 255, 255, .15);
            color: #c7d2fe;
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-family: Manrope, sans-serif;
            font-size: clamp(38px, 5vw, 65px);
            line-height: 1.04;
            letter-spacing: -2.5px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: #a5b4fc;
        }

        .hero-description {
            color: #cbd5e1;
            font-size: 16px;
            max-width: 550px;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            min-height: 46px;
            border: 0;
            border-radius: 12px;
            padding: 0 19px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            font-weight: 700;
            font-size: 14px;
            transition: .2s ease;
        }

        .btn-primary {
            color: white;
            background: var(--accent);
            box-shadow: 0 10px 25px rgba(99, 102, 241, .3);
        }

        .btn-primary:hover {
            background: var(--accent-dark);
            transform: translateY(-2px);
        }

        .btn-white {
            color: white;
            border: 1px solid rgba(255, 255, 255, .2);
            background: rgba(255, 255, 255, .08);
            backdrop-filter: blur(10px);
        }

        .btn-white:hover {
            background: rgba(255, 255, 255, .15);
        }

        .hero-stats {
            display: flex;
            gap: 30px;
            margin-top: 45px;
        }

        .hero-stat strong {
            display: block;
            font-family: Manrope;
            font-size: 20px;
        }

        .hero-stat span {
            font-size: 11px;
            color: #94a3b8;
        }

        /* ========================================
           SECTION
        ======================================== */

        .section {
            padding: 75px 0 0;
        }

        .section-header {
            display: flex;
            align-items: end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 26px;
        }

        .section-heading small {
            display: block;
            color: var(--accent);
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1.3px;
            margin-bottom: 7px;
        }

        .section-heading h2 {
            font-family: Manrope;
            font-size: 30px;
            letter-spacing: -.8px;
        }

        .section-heading p {
            margin-top: 6px;
            color: var(--text-soft);
            font-size: 14px;
        }

        .view-all {
            color: var(--accent);
            font-size: 13px;
            font-weight: 700;
            display: flex;
            gap: 7px;
            align-items: center;
            white-space: nowrap;
        }

        /* ========================================
           CATEGORIES
        ======================================== */

        .category-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 14px;
        }

        .category-card {
            min-height: 150px;
            background: white;
            border: 1px solid var(--border);
            border-radius: 17px;
            padding: 22px 12px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            cursor: pointer;
            transition: .25s ease;
        }

        .category-card:hover {
            transform: translateY(-5px);
            border-color: #c7d2fe;
            box-shadow: var(--shadow);
        }

        .category-icon {
            width: 54px;
            height: 54px;
            border-radius: 16px;
            display: grid;
            place-items: center;
            color: var(--accent);
            background: var(--accent-light);
            font-size: 21px;
            margin-bottom: 12px;
        }

        .category-card h3 {
            font-size: 13px;
            margin-bottom: 4px;
        }

        .category-card p {
            color: #94a3b8;
            font-size: 11px;
        }

        /* ========================================
           PRODUCT TOOLBAR
        ======================================== */

        .product-toolbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            gap: 15px;
        }

        .result-count {
            color: var(--text-soft);
            font-size: 13px;
        }

        .filter-buttons {
            display: flex;
            gap: 7px;
            overflow-x: auto;
        }

        .filter-btn {
            border: 1px solid var(--border);
            background: white;
            border-radius: 999px;
            padding: 8px 13px;
            color: #64748b;
            font-size: 12px;
            font-weight: 600;
            white-space: nowrap;
        }

        .filter-btn.active,
        .filter-btn:hover {
            background: var(--accent);
            border-color: var(--accent);
            color: white;
        }

        /* ========================================
           PRODUCTS
        ======================================== */

        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .product-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 18px;
            overflow: hidden;
            position: relative;
            transition: .25s ease;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow);
        }

        .product-image {
            height: 255px;
            background: #f1f5f9;
            position: relative;
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .5s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;
            top: 13px;
            left: 13px;
            padding: 6px 9px;
            border-radius: 7px;
            color: white;
            background: var(--accent);
            font-size: 10px;
            font-weight: 800;
            z-index: 2;
        }

        .product-badge.sale {
            background: var(--danger);
        }

        .wishlist-btn {
            position: absolute;
            right: 13px;
            top: 13px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            border: 0;
            background: rgba(255,255,255,.95);
            color: #64748b;
            display: grid;
            place-items: center;
            z-index: 2;
            box-shadow: 0 5px 15px rgba(0,0,0,.08);
        }

        .wishlist-btn.active {
            color: #ef4444;
        }

        .product-info {
            padding: 17px;
        }

        .product-category {
            color: #94a3b8;
            font-size: 10px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: .7px;
            margin-bottom: 5px;
        }

        .product-title {
            font-family: Manrope;
            font-size: 14px;
            margin-bottom: 10px;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 6px;
            margin-bottom: 13px;
        }

        .stars {
            color: #f59e0b;
            font-size: 11px;
            letter-spacing: 1px;
        }

        .reviews {
            color: #94a3b8;
            font-size: 10px;
        }

        .price-line {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
        }

        .current-price {
            font-family: Manrope;
            font-size: 18px;
            font-weight: 800;
        }

        .old-price {
            color: #94a3b8;
            font-size: 11px;
            text-decoration: line-through;
            margin-left: 5px;
        }

        .add-cart-btn {
            width: 38px;
            height: 38px;
            border: 0;
            border-radius: 10px;
            background: var(--primary);
            color: white;
            display: grid;
            place-items: center;
            transition: .2s ease;
        }

        .add-cart-btn:hover {
            background: var(--accent);
            transform: scale(1.05);
        }

        /* ========================================
           PROMO
        ======================================== */

        .promo {
            margin-top: 75px;
        }

        .promo-card {
            min-height: 330px;
            border-radius: 24px;
            overflow: hidden;
            position: relative;
            background:
                linear-gradient(
                    90deg,
                    rgba(15, 23, 42, .97),
                    rgba(15, 23, 42, .70),
                    rgba(15, 23, 42, .15)
                ),
                url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1600&q=90")
                center / cover;
            color: white;
            display: flex;
            align-items: center;
        }

        .promo-content {
            padding: 45px;
            max-width: 650px;
        }

        .promo-tag {
            color: #c7d2fe;
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .promo h2 {
            font-family: Manrope;
            font-size: 34px;
            margin: 8px 0;
        }

        .promo p {
            color: #cbd5e1;
            font-size: 13px;
        }

        .countdown {
            display: flex;
            gap: 8px;
            margin: 23px 0;
        }

        .count-box {
            min-width: 58px;
            padding: 9px 8px;
            text-align: center;
            border-radius: 9px;
            background: rgba(255,255,255,.1);
            border: 1px solid rgba(255,255,255,.1);
        }

        .count-box strong {
            display: block;
            font-family: Manrope;
            font-size: 19px;
        }

        .count-box span {
            color: #94a3b8;
            font-size: 9px;
        }

        /* ========================================
           BENEFITS
        ======================================== */

        .benefits {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            border: 1px solid var(--border);
            border-radius: 18px;
            background: white;
            overflow: hidden;
        }

        .benefit {
            padding: 25px;
            display: flex;
            align-items: center;
            gap: 14px;
            border-right: 1px solid var(--border);
        }

        .benefit:last-child {
            border-right: 0;
        }

        .benefit-icon {
            width: 43px;
            height: 43px;
            border-radius: 12px;
            background: var(--accent-light);
            color: var(--accent);
            display: grid;
            place-items: center;
            flex-shrink: 0;
        }

        .benefit strong {
            display: block;
            font-size: 12px;
            margin-bottom: 2px;
        }

        .benefit span {
            color: #94a3b8;
            font-size: 10px;
        }

        /* ========================================
           TESTIMONIALS
        ======================================== */

        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 16px;
        }

        .testimonial {
            background: white;
            border: 1px solid var(--border);
            border-radius: 18px;
            padding: 24px;
        }

        .testimonial-stars {
            color: #f59e0b;
            font-size: 11px;
            margin-bottom: 15px;
        }

        .testimonial p {
            font-size: 13px;
            line-height: 1.8;
            color: #475569;
            margin-bottom: 20px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .customer img {
            width: 39px;
            height: 39px;
            border-radius: 50%;
            object-fit: cover;
        }

        .customer strong {
            display: block;
            font-size: 12px;
        }

        .customer span {
            color: #94a3b8;
            font-size: 10px;
        }

        /* ========================================
           NEWSLETTER
        ======================================== */

        .newsletter {
            margin-top: 75px;
        }

        .newsletter-card {
            padding: 45px;
            border-radius: 23px;
            background:
                radial-gradient(circle at top right, rgba(129,140,248,.35), transparent 35%),
                #111827;
            color: white;
            text-align: center;
        }

        .newsletter-card h2 {
            font-family: Manrope;
            font-size: 30px;
            margin-bottom: 7px;
        }

        .newsletter-card p {
            color: #94a3b8;
            font-size: 13px;
            margin-bottom: 23px;
        }

        .newsletter-form {
            display: flex;
            max-width: 480px;
            margin: auto;
            padding: 5px;
            border-radius: 13px;
            background: white;
        }

        .newsletter-form input {
            flex: 1;
            min-width: 0;
            border: 0;
            outline: 0;
            padding: 0 13px;
            color: var(--text);
        }

        .newsletter-form .btn {
            min-height: 40px;
        }

        .newsletter-message {
            display: none;
            margin-top: 13px;
            font-size: 12px;
            color: #a5f3fc;
        }

        /* ========================================
           FOOTER
        ======================================== */

        footer {
            margin-top: 75px;
            background: #0f172a;
            color: #94a3b8;
            padding: 55px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 50px;
        }

        .footer-brand {
            color: white;
            font-family: Manrope;
            font-size: 19px;
            margin-bottom: 12px;
        }

        .footer-about {
            font-size: 12px;
            max-width: 330px;
            line-height: 1.8;
        }

        .socials {
            display: flex;
            gap: 8px;
            margin-top: 18px;
        }

        .social {
            width: 34px;
            height: 34px;
            display: grid;
            place-items: center;
            border-radius: 9px;
            background: rgba(255,255,255,.06);
            color: #cbd5e1;
            transition: .2s;
        }

        .social:hover {
            background: var(--accent);
            color: white;
        }

        .footer-column h4 {
            color: white;
            font-size: 12px;
            margin-bottom: 14px;
        }

        .footer-column a {
            display: block;
            font-size: 11px;
            margin-bottom: 10px;
        }

        .footer-column a:hover {
            color: white;
        }

        .copyright {
            border-top: 1px solid rgba(255,255,255,.07);
            margin-top: 45px;
            padding-top: 20px;
            text-align: center;
            font-size: 10px;
        }

        /* ========================================
           CART DRAWER
        ======================================== */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(15,23,42,.45);
            backdrop-filter: blur(4px);
            z-index: 200;
            opacity: 0;
            visibility: hidden;
            transition: .25s ease;
        }

        .overlay.active {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            right: 0;
            top: 0;
            height: 100%;
            width: min(430px, 100%);
            background: white;
            z-index: 201;
            transform: translateX(100%);
            transition: .3s ease;
            display: flex;
            flex-direction: column;
            box-shadow: -20px 0 60px rgba(0,0,0,.12);
        }

        .cart-drawer.active {
            transform: translateX(0);
        }

        .cart-header {
            height: 76px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 22px;
            border-bottom: 1px solid var(--border);
        }

        .cart-header h3 {
            font-family: Manrope;
            font-size: 18px;
        }

        .close-cart {
            width: 38px;
            height: 38px;
            border: 0;
            border-radius: 10px;
            background: var(--surface-2);
            color: #475569;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 18px;
        }

        .empty-cart {
            height: 100%;
            display: grid;
            place-items: center;
            text-align: center;
            color: #94a3b8;
        }

        .empty-cart i {
            font-size: 38px;
            color: #cbd5e1;
            margin-bottom: 13px;
        }

        .cart-item {
            display: flex;
            gap: 12px;
            padding: 12px 0;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 65px;
            height: 65px;
            border-radius: 10px;
            object-fit: cover;
            background: var(--surface-2);
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-title {
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .cart-item-price {
            font-size: 12px;
            font-weight: 800;
            color: var(--accent);
        }

        .remove-item {
            border: 0;
            background: transparent;
            color: #94a3b8;
            align-self: flex-start;
        }

        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--border);
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            margin-bottom: 14px;
        }

        .cart-total span {
            color: #64748b;
            font-size: 13px;
        }

        .cart-total strong {
            font-family: Manrope;
            font-size: 19px;
        }

        .checkout-btn {
            width: 100%;
        }

        /* ========================================
           TOAST
        ======================================== */

        .toast {
            position: fixed;
            right: 22px;
            bottom: 22px;
            z-index: 500;
            background: #0f172a;
            color: white;
            padding: 13px 17px;
            border-radius: 12px;
            box-shadow: var(--shadow-lg);
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 12px;
            transform: translateY(100px);
            opacity: 0;
            transition: .3s ease;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        .toast i {
            color: #86efac;
        }

        /* ========================================
           MOBILE MENU
        ======================================== */

        .mobile-menu {
            display: none;
            padding: 15px 20px 20px;
            border-top: 1px solid var(--border);
            background: white;
        }

        .mobile-menu a {
            display: block;
            padding: 11px 0;
            font-size: 14px;
            font-weight: 600;
            color: #475569;
        }

        /* ========================================
           RESPONSIVE
        ======================================== */

        @media (max-width: 1100px) {
            .desktop-nav {
                display: none;
            }

            .mobile-menu-btn {
                display: grid;
            }

            .header-main {
                gap: 15px;
            }

            .category-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .benefits {
                grid-template-columns: repeat(2, 1fr);
            }

            .benefit:nth-child(2) {
                border-right: 0;
            }

            .benefit:nth-child(-n+2) {
                border-bottom: 1px solid var(--border);
            }

            .footer-grid {
                grid-template-columns: 2fr 1fr 1fr;
            }
        }

        @media (max-width: 760px) {
            .container {
                width: min(100% - 28px, var(--container));
            }

            .topbar-right {
                display: none;
            }

            .topbar-left {
                width: 100%;
                justify-content: center;
            }

            .header-search {
                display: none;
            }

            .header-main {
                min-height: 68px;
            }

            .hero-card {
                min-height: 550px;
                background:
                    linear-gradient(
                        180deg,
                        rgba(7,15,30,.65),
                        rgba(7,15,30,.96)
                    ),
                    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1200&q=85")
                    center / cover;
            }

            .hero-content {
                padding: 30px;
                align-self: end;
            }

            .hero h1 {
                font-size: 42px;
                letter-spacing: -1.5px;
            }

            .hero-stats {
                gap: 18px;
                margin-top: 30px;
            }

            .section {
                padding-top: 55px;
            }

            .section-header {
                align-items: flex-start;
                flex-direction: column;
            }

            .category-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .product-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }

            .product-image {
                height: 210px;
            }

            .promo {
                margin-top: 55px;
            }

            .promo-card {
                min-height: 470px;
                align-items: end;
                background:
                    linear-gradient(
                        180deg,
                        rgba(15,23,42,.15),
                        rgba(15,23,42,.98)
                    ),
                    url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85")
                    center / cover;
            }

            .promo-content {
                padding: 28px;
            }

            .benefits {
                grid-template-columns: 1fr;
            }

            .benefit,
            .benefit:nth-child(2) {
                border-right: 0;
                border-bottom: 1px solid var(--border);
            }

            .benefit:last-child {
                border-bottom: 0;
            }

            .testimonial-grid {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 35px;
            }

            .footer-grid > :first-child {
                grid-column: 1 / -1;
            }

            .newsletter {
                margin-top: 55px;
            }

            .newsletter-card {
                padding: 35px 20px;
            }
        }

        @media (max-width: 480px) {
            .logo-text {
                font-size: 18px;
            }

            .logo-icon {
                width: 36px;
                height: 36px;
            }

            .header-actions {
                margin-left: auto;
            }

            .header-btn {
                width: 37px;
                height: 37px;
            }

            .hero h1 {
                font-size: 36px;
            }

            .hero-content {
                padding: 24px;
            }

            .hero-description {
                font-size: 13px;
            }

            .product-image {
                height: 175px;
            }

            .product-info {
                padding: 13px;
            }

            .product-title {
                font-size: 12px;
            }

            .current-price {
                font-size: 15px;
            }

            .add-cart-btn {
                width: 34px;
                height: 34px;
            }

            .section-heading h2 {
                font-size: 25px;
            }

            .newsletter-form {
                flex-direction: column;
                background: transparent;
                gap: 8px;
            }

            .newsletter-form input {
                height: 45px;
                border-radius: 10px;
            }

            .newsletter-form .btn {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

            .footer-grid > :first-child {
                grid-column: auto;
            }
        }
    </style>
</head>

<body>

<!-- TOP BAR -->
<div class="topbar">
    <div class="container topbar-inner">
        <div class="topbar-left">
            <span><i class="fa-solid fa-truck-fast"></i> Free shipping on orders over $50</span>
        </div>

        <div class="topbar-right">
            <span><i class="fa-solid fa-shield-halved"></i> Secure payments</span>
            <span><i class="fa-solid fa-headset"></i> 24/7 Support</span>
        </div>
    </div>
</div>

<!-- HEADER -->
<header>
    <div class="container header-main">

        <button class="header-btn mobile-menu-btn" id="mobileMenuBtn">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="logo">
            <div class="logo-icon">
                <i class="fa-solid fa-bag-shopping"></i>
            </div>

            <div class="logo-text">
                Nexus<span>Shop</span>
            </div>
        </a>

        <nav class="desktop-nav">
            <a href="#" class="active">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Trending</a>
            <a href="#deals">Deals</a>
            <a href="#about">About</a>
        </nav>

        <div class="header-search">
            <i class="fa-solid fa-magnifying-glass search-icon"></i>
            <input
                type="search"
                id="searchInput"
                placeholder="Search products..."
                aria-label="Search products"
            >
        </div>

        <div class="header-actions">
            <button class="header-btn" title="Account">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="header-btn" id="wishlistHeader" title="Wishlist">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button class="header-btn" id="cartBtn" title="Shopping cart">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="cart-badge" id="cartCount">0</span>
            </button>
        </div>
    </div>

    <div class="mobile-menu" id="mobileMenu">
        <a href="#">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Trending</a>
        <a href="#deals">Deals</a>
        <a href="#about">About</a>
    </div>
</header>

<main>

    <!-- HERO -->
    <section class="hero">
        <div class="container">

            <div class="hero-card">

                <div class="hero-content">

                    <div class="hero-label">
                        <i class="fa-solid fa-sparkles"></i>
                        NEW SEASON COLLECTION
                    </div>

                    <h1>
                        Premium picks.<br>
                        <span>Made for you.</span>
                    </h1>

                    <p class="hero-description">
                        Discover hand-picked fashion, technology and lifestyle
                        essentials designed to elevate your everyday.
                    </p>

                    <div class="hero-buttons">
                        <button class="btn btn-primary" id="shopNow">
                            Shop Collection
                            <i class="fa-solid fa-arrow-right"></i>
                        </button>

                        <button class="btn btn-white" id="exploreDeals">
                            View Deals
                        </button>
                    </div>

                    <div class="hero-stats">
                        <div class="hero-stat">
                            <strong>10K+</strong>
                            <span>Happy Customers</span>
                        </div>

                        <div class="hero-stat">
                            <strong>4.9/5</strong>
                            <span>Customer Rating</span>
                        </div>

                        <div class="hero-stat">
                            <strong>500+</strong>
                            <span>Premium Products</span>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </section>


    <!-- CATEGORIES -->
    <section class="section" id="categories">
        <div class="container">

            <div class="section-header">
                <div class="section-heading">
                    <small>Explore</small>
                    <h2>Shop by category</h2>
                    <p>Everything you need, all in one place.</p>
                </div>

                <a href="#products" class="view-all">
                    View all
                    <i class="fa-solid fa-arrow-right"></i>
                </a>
            </div>

            <div class="category-grid" id="categoriesGrid"></div>

        </div>
    </section>


    <!-- PRODUCTS -->
    <section class="section" id="products">
        <div class="container">

            <div class="section-header">
                <div class="section-heading">
                    <small>Trending now</small>
                    <h2>Popular products</h2>
                    <p>Our customers' favorite picks this week.</p>
                </div>
            </div>

            <div class="product-toolbar">

                <span class="result-count" id="resultCount">
                    Showing 8 products
                </span>

                <div class="filter-buttons">
                    <button class="filter-btn active" data-filter="all">
                        All
                    </button>

                    <button class="filter-btn" data-filter="phones">
                        Phones
                    </button>

                    <button class="filter-btn" data-filter="laptops">
                        Laptops
                    </button>

                    <button class="filter-btn" data-filter="gadgets">
                        Gadgets
                    </button>

                    <button class="filter-btn" data-filter="accessories">
                        Accessories
                    </button>
                </div>

            </div>

            <div class="product-grid" id="productsGrid"></div>

        </div>
    </section>


    <!-- DEAL -->
    <section class="promo" id="deals">

        <div class="container">

            <div class="promo-card">

                <div class="promo-content">

                    <span class="promo-tag">
                        Limited time offer
                    </span>

                    <h2>
                        MacBook Air M2
                    </h2>

                    <p>
                        Thin, powerful and beautifully designed.
                        Get premium performance at an exclusive price.
                    </p>

                    <div class="countdown">

                        <div class="count-box">
                            <strong id="days">00</strong>
                            <span>DAYS</span>
                        </div>

                        <div class="count-box">
                            <strong id="hours">00</strong>
                            <span>HOURS</span>
                        </div>

                        <div class="count-box">
                            <strong id="minutes">00</strong>
                            <span>MINUTES</span>
                        </div>

                        <div class="count-box">
                            <strong id="seconds">00</strong>
                            <span>SECONDS</span>
                        </div>

                    </div>

                    <button class="btn btn-primary" id="buyDeal">
                        Shop Deal
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                </div>

            </div>

        </div>

    </section>


    <!-- BENEFITS -->
    <section class="section">
        <div class="container">

            <div class="benefits">

                <div class="benefit">
                    <div class="benefit-icon">
                        <i class="fa-solid fa-truck-fast"></i>
                    </div>

                    <div>
                        <strong>Free Shipping</strong>
                        <span>Orders over $50</span>
                    </div>
                </div>

                <div class="benefit">
                    <div class="benefit-icon">
                        <i class="fa-solid fa-rotate-left"></i>
                    </div>

                    <div>
                        <strong>Easy Returns</strong>
                        <span>30-day return policy</span>
                    </div>
                </div>

                <div class="benefit">
                    <div class="benefit-icon">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>

                    <div>
                        <strong>Secure Payment</strong>
                        <span>100% secure checkout</span>
                    </div>
                </div>

                <div class="benefit">
                    <div class="benefit-icon">
                        <i class="fa-solid fa-headset"></i>
                    </div>

                    <div>
                        <strong>Premium Support</strong>
                        <span>Here when you need us</span>
                    </div>
                </div>

            </div>

        </div>
    </section>


    <!-- TESTIMONIALS -->
    <section class="section" id="about">
        <div class="container">

            <div class="section-header">
                <div class="section-heading">
                    <small>Customer love</small>
                    <h2>What shoppers say</h2>
                    <p>Real experiences from our community.</p>
                </div>
            </div>

            <div class="testimonial-grid">

                <div class="testimonial">
                    <div class="testimonial-stars">
                        ★★★★★
                    </div>

                    <p>
                        "The entire shopping experience was incredibly smooth.
                        My order arrived earlier than expected and the quality
                        was even better than the photos."
                    </p>

                    <div class="customer">
                        <img
                            src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                            alt="Ava Martin"
                        >

                        <div>
                            <strong>Ava Martin</strong>
                            <span>Verified customer</span>
                        </div>
                    </div>
                </div>


                <div class="testimonial">
                    <div class="testimonial-stars">
                        ★★★★★
                    </div>

                    <p>
                        "Beautiful website, great products and fast delivery.
                        I especially love how easy it is to find exactly what
                        I'm looking for."
                    </p>

                    <div class="customer">
                        <img
                            src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                            alt="Michael Lee"
                        >

                        <div>
                            <strong>Michael Lee</strong>
                            <span>Verified customer</span>
                        </div>
                    </div>
                </div>


                <div class="testimonial">
                    <div class="testimonial-stars">
                        ★★★★★
                    </div>

                    <p>
                        "Excellent selection and very responsive support.
                        NexusShop has quickly become one of my favorite places
                        to shop online."
                    </p>

                    <div class="customer">
                        <img
                            src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                            alt="Sophia Wilson"
                        >

                        <div>
                            <strong>Sophia Wilson</strong>
                            <span>Verified customer</span>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>


    <!-- NEWSLETTER -->
    <section class="newsletter">

        <div class="container">

            <div class="newsletter-card">

                <h2>Stay ahead of the trend.</h2>

                <p>
                    Join our newsletter and receive exclusive deals,
                    new arrivals and shopping inspiration.
                </p>

                <form class="newsletter-form" id="newsletterForm">

                    <input
                        type="email"
                        id="newsletterEmail"
                        placeholder="Enter your email address"
                        required
                    >

                    <button class="btn btn-primary" type="submit">
                        Subscribe
                    </button>

                </form>

                <div class="newsletter-message" id="newsletterMessage">
                    Thanks! You're now subscribed.
                </div>

            </div>

        </div>

    </section>

</main>


<!-- FOOTER -->
<footer>

    <div class="container">

        <div class="footer-grid">

            <div>
                <div class="footer-brand">
                    NexusShop
                </div>

                <p class="footer-about">
                    A premium shopping experience built around carefully
                    selected products, effortless discovery and exceptional
                    customer service.
                </p>

                <div class="socials">
                    <a href="#" class="social">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>

                    <a href="#" class="social">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="#" class="social">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>

                    <a href="#" class="social">
                        <i class="fa-brands fa-pinterest-p"></i>
                    </a>
                </div>
            </div>


            <div class="footer-column">
                <h4>Shop</h4>

                <a href="#products">All Products</a>
                <a href="#categories">Categories</a>
                <a href="#deals">Deals</a>
                <a href="#">New Arrivals</a>
            </div>


            <div class="footer-column">
                <h4>Company</h4>

                <a href="#about">About Us</a>
                <a href="#">Careers</a>
                <a href="#">Our Story</a>
                <a href="#">Contact</a>
            </div>


            <div class="footer-column">
                <h4>Support</h4>

                <a href="#">Help Center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Privacy</a>
            </div>

        </div>

        <div class="copyright">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>


<!-- OVERLAY -->
<div class="overlay" id="overlay"></div>


<!-- CART DRAWER -->
<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">
        <h3>Your Cart</h3>

        <button class="close-cart" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>
    </div>

    <div class="cart-items" id="cartItems">

        <div class="empty-cart">
            <div>
                <i class="fa-solid fa-bag-shopping"></i>
                <p>Your cart is empty.</p>
            </div>
        </div>

    </div>

    <div class="cart-footer">

        <div class="cart-total">
            <span>Subtotal</span>
            <strong id="cartTotal">$0</strong>
        </div>

        <button class="btn btn-primary checkout-btn" id="checkoutBtn">
            Proceed to Checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>


<!-- TOAST -->
<div class="toast" id="toast">
    <i class="fa-solid fa-circle-check"></i>
    <span id="toastMessage">Added to cart</span>
</div>


<script>

    /* ========================================
       PRODUCT DATA
    ======================================== */

    const PRODUCTS = [

        {
            id: 1,
            title: "iPhone 14 Pro Max",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "NEW",
            category: "phones",
            categoryName: "Smartphones",
            icon: "fa-mobile-screen-button",
            img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 2,
            title: 'MacBook Pro 14"',
            price: 1999,
            rating: 4,
            reviews: 86,
            category: "laptops",
            categoryName: "Laptops",
            icon: "fa-laptop",
            img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 3,
            title: "Apple Watch Series 8",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: "-25%",
            category: "accessories",
            categoryName: "Accessories",
            icon: "fa-clock",
            img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 4,
            title: "Nike Air Max 270",
            price: 150,
            rating: 4,
            reviews: 53,
            category: "footwear",
            categoryName: "Footwear",
            icon: "fa-shoe-prints",
            img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 5,
            title: "Sony A7 IV Camera",
            price: 2499,
            rating: 5,
            reviews: 42,
            badge: "PRO",
            category: "gadgets",
            categoryName: "Gadgets",
            icon: "fa-camera",
            img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 6,
            title: "Chanel No. 5",
            price: 120,
            rating: 5,
            reviews: 189,
            category: "accessories",
            categoryName: "Beauty",
            icon: "fa-spray-can-sparkles",
            img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 7,
            title: "Travel Backpack",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            badge: "SALE",
            category: "accessories",
            categoryName: "Accessories",
            icon: "fa-bag-shopping",
            img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 8,
            title: "Sony WH-1000XM5",
            price: 399,
            rating: 5,
            reviews: 156,
            badge: "BESTSELLER",
            category: "gadgets",
            categoryName: "Audio",
            icon: "fa-headphones",
            img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85"
        }

    ];


    const CATEGORIES = [

        {
            id: "phones",
            name: "Smartphones",
            icon: "fa-mobile-screen-button",
            count: "48 items"
        },

        {
            id: "laptops",
            name: "Laptops",
            icon: "fa-laptop",
            count: "32 items"
        },

        {
            id: "clothing",
            name: "Fashion",
            icon: "fa-shirt",
            count: "120 items"
        },

        {
            id: "gadgets",
            name: "Gadgets",
            icon: "fa-headphones",
            count: "76 items"
        },

        {
            id: "footwear",
            name: "Footwear",
            icon: "fa-shoe-prints",
            count: "54 items"
        },

        {
            id: "accessories",
            name: "Accessories",
            icon: "fa-watch",
            count: "89 items"
        }

    ];


    /* ========================================
       STATE
    ======================================== */

    let cart = JSON.parse(localStorage.getItem("nexusCart") || "[]");

    let wishlist = JSON.parse(
        localStorage.getItem("nexusWishlist") || "[]"
    );

    let currentFilter = "all";


    /* ========================================
       DOM
    ======================================== */

    const productsGrid =
        document.getElementById("productsGrid");

    const categoriesGrid =
        document.getElementById("categoriesGrid");

    const cartCount =
        document.getElementById("cartCount");

    const cartDrawer =
        document.getElementById("cartDrawer");

    const overlay =
        document.getElementById("overlay");

    const toast =
        document.getElementById("toast");

    const toastMessage =
        document.getElementById("toastMessage");


    /* ========================================
       UTILITIES
    ======================================== */

    function formatPrice(price) {
        return "$" + price.toLocaleString();
    }


    function saveState() {

        localStorage.setItem(
            "nexusCart",
            JSON.stringify(cart)
        );

        localStorage.setItem(
            "nexusWishlist",
            JSON.stringify(wishlist)
        );

    }


    function showToast(message) {

        toastMessage.textContent = message;

        toast.classList.add("show");

        clearTimeout(window.toastTimer);

        window.toastTimer = setTimeout(() => {

            toast.classList.remove("show");

        }, 2500);

    }


    /* ========================================
       CATEGORIES
    ======================================== */

    function renderCategories() {

        categoriesGrid.innerHTML = "";

        CATEGORIES.forEach(category => {

            const card =
                document.createElement("div");

            card.className = "category-card";

            card.innerHTML = `

                <div class="category-icon">
                    <i class="fa-solid ${category.icon}"></i>
                </div>

                <h3>${category.name}</h3>

                <p>${category.count}</p>

            `;

            card.addEventListener("click", () => {

                currentFilter = category.id;

                document
                    .querySelectorAll(".filter-btn")
                    .forEach(btn => {

                        btn.classList.toggle(
                            "active",
                            btn.dataset.filter === category.id
                        );

                    });

                renderProducts();

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });

            categoriesGrid.appendChild(card);

        });

    }


    /* ========================================
       PRODUCTS
    ======================================== */

    function renderProducts() {

        const search =
            document
                .getElementById("searchInput")
                .value
                .trim()
                .toLowerCase();


        let filtered = PRODUCTS.filter(product => {

            const matchesFilter =
                currentFilter === "all" ||
                product.category === currentFilter;

            const matchesSearch =
                !search ||
                product.title
                    .toLowerCase()
                    .includes(search) ||
                product.categoryName
                    .toLowerCase()
                    .includes(search);

            return matchesFilter && matchesSearch;

        });


        document.getElementById("resultCount").textContent =
            `Showing ${filtered.length} ${
                filtered.length === 1
                    ? "product"
                    : "products"
            }`;


        productsGrid.innerHTML = "";


        if (!filtered.length) {

            productsGrid.innerHTML = `

                <div style="
                    grid-column:1/-1;
                    padding:60px;
                    text-align:center;
                    color:#94a3b8;
                ">

                    <i
                        class="fa-solid fa-magnifying-glass"
                        style="
                            font-size:35px;
                            margin-bottom:15px;
                        "
                    ></i>

                    <h3 style="
                        color:#475569;
                        margin-bottom:5px;
                    ">
                        No products found
                    </h3>

                    <p>
                        Try another search or category.
                    </p>

                </div>

            `;

            return;
        }


        filtered.forEach(product => {

            const card =
                document.createElement("article");

            card.className = "product-card";

            const isWishlisted =
                wishlist.includes(product.id);


            const badge =
                product.badge
                    ? `
                        <span class="
                            product-badge
                            ${product.badge === "SALE" ||
                              product.badge.includes("%")
                                ? "sale"
                                : ""}
                        ">
                            ${product.badge}
                        </span>
                    `
                    : "";


            card.innerHTML = `

                <div class="product-image">

                    ${badge}

                    <button
                        class="
                            wishlist-btn
                            ${isWishlisted ? "active" : ""}
                        "
                        data-wishlist="${product.id}"
                        aria-label="Wishlist"
                    >
                        <i class="
                            fa-${isWishlisted ? "solid" : "regular"}
                            fa-heart
                        "></i>
                    </button>

                    <img
                        src="${product.img}"
                        alt="${product.title}"
                        loading="lazy"
                    >

                </div>


                <div class="product-info">

                    <div class="product-category">
                        ${product.categoryName}
                    </div>

                    <h3 class="product-title">
                        ${product.title}
                    </h3>

                    <div class="product-rating">

                        <span class="stars">
                            ${"★".repeat(product.rating)}
                        </span>

                        <span class="reviews">
                            (${product.reviews})
                        </span>

                    </div>


                    <div class="price-line">

                        <div>

                            <span class="current-price">
                                ${formatPrice(product.price)}
                            </span>

                            ${
                                product.oldPrice
                                    ? `
                                        <span class="old-price">
                                            ${formatPrice(product.oldPrice)}
                                        </span>
                                    `
                                    : ""
                            }

                        </div>


                        <button
                            class="add-cart-btn"
                            data-cart="${product.id}"
                            aria-label="Add to cart"
                        >
                            <i class="fa-solid fa-plus"></i>
                        </button>

                    </div>

                </div>

            `;


            productsGrid.appendChild(card);

        });


        attachProductEvents();

    }


    function attachProductEvents() {

        document
            .querySelectorAll("[data-cart]")
            .forEach(button => {

                button.addEventListener(
                    "click",
                    () => {

                        addToCart(
                            Number(button.dataset.cart)
                        );

                    }
                );

            });


        document
            .querySelectorAll("[data-wishlist]")
            .forEach(button => {

                button.addEventListener(
                    "click",
                    () => {

                        toggleWishlist(
                            Number(
                                button.dataset.wishlist
                            )
                        );

                    }
                );

            });

    }


    /* ========================================
       CART
    ======================================== */

    function addToCart(productId) {

        const product =
            PRODUCTS.find(
                item => item.id === productId
            );

        if (!product) return;


        const existing =
            cart.find(
                item => item.id === productId
            );


        if (existing) {

            existing.quantity++;

        } else {

            cart.push({
                id: productId,
                quantity: 1
            });

        }


        saveState();

        updateCartUI();

        showToast(
            `${product.title} added to your cart`
        );

    }


    function removeFromCart(productId) {

        cart =
            cart.filter(
                item => item.id !== productId
            );

        saveState();

        updateCartUI();

    }


    function updateCartUI() {

        const count =
            cart.reduce(
                (sum, item) =>
                    sum + item.quantity,
                0
            );


        cartCount.textContent = count;


        const cartItems =
            document.getElementById("cartItems");


        if (!cart.length) {

            cartItems.innerHTML = `

                <div class="empty-cart">

                    <div>

                        <i class="
                            fa-solid
                            fa-bag-shopping
                        "></i>

                        <p>
                            Your cart is empty.
                        </p>

                    </div>

                </div>

            `;

        } else {

            cartItems.innerHTML = "";


            cart.forEach(item => {

                const product =
                    PRODUCTS.find(
                        p => p.id === item.id
                    );

                if (!product) return;


                const element =
                    document.createElement("div");

                element.className = "cart-item";


                element.innerHTML = `

                    <img
                        src="${product.img}"
                        alt="${product.title}"
                    >

                    <div class="cart-item-info">

                        <div class="cart-item-title">
                            ${product.title}
                        </div>

                        <div style="
                            color:#94a3b8;
                            font-size:10px;
                            margin-bottom:5px;
                        ">
                            Qty: ${item.quantity}
                        </div>

                        <div class="cart-item-price">
                            ${formatPrice(
                                product.price *
                                item.quantity
                            )}
                        </div>

                    </div>

                    <button
                        class="remove-item"
                        data-remove="${product.id}"
                        aria-label="Remove item"
                    >
                        <i class="
                            fa-solid
                            fa-trash-can
                        "></i>
                    </button>

                `;


                cartItems.appendChild(element);

            });


            cartItems
                .querySelectorAll("[data-remove]")
                .forEach(button => {

                    button.addEventListener(
                        "click",
                        () => {

                            removeFromCart(
                                Number(
                                    button.dataset.remove
                                )
                            );

                        }
                    );

                });

        }


        const total =
            cart.reduce(
                (sum, item) => {

                    const product =
                        PRODUCTS.find(
                            p => p.id === item.id
                        );

                    return sum +
                        (product
                            ? product.price *
                              item.quantity
                            : 0);

                },
                0
            );


        document.getElementById("cartTotal")
            .textContent =
                formatPrice(total);

    }


    /* ========================================
       WISHLIST
    ======================================== */

    function toggleWishlist(productId) {

        const product =
            PRODUCTS.find(
                p => p.id === productId
            );

        if (!product) return;


        if (wishlist.includes(productId)) {

            wishlist =
                wishlist.filter(
                    id => id !== productId
                );

            showToast(
                `${product.title} removed from wishlist`
            );

        } else {

            wishlist.push(productId);

            showToast(
                `${product.title} saved to wishlist`
            );

        }


        saveState();

        renderProducts();

    }


    /* ========================================
       CART DRAWER
    ======================================== */

    function openCart() {

        cartDrawer.classList.add("active");

        overlay.classList.add("active");

        document.body.classList.add("no-scroll");

    }


    function closeCart() {

        cartDrawer.classList.remove("active");

        overlay.classList.remove("active");

        document.body.classList.remove("no-scroll");

    }


    document
        .getElementById("cartBtn")
        .addEventListener(
            "click",
            openCart
        );


    document
        .getElementById("closeCart")
        .addEventListener(
            "click",
            closeCart
        );


    overlay.addEventListener(
        "click",
        closeCart
    );


    /* ========================================
       FILTERS
    ======================================== */

    document
        .querySelectorAll(".filter-btn")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    document
                        .querySelectorAll(".filter-btn")
                        .forEach(btn =>
                            btn.classList.remove("active")
                        );

                    button.classList.add("active");

                    currentFilter =
                        button.dataset.filter;

                    renderProducts();

                }
            );

        });


    /* ========================================
       SEARCH
    ======================================== */

    document
        .getElementById("searchInput")
        .addEventListener(
            "input",
            renderProducts
        );


    /* ========================================
       HERO BUTTONS
    ======================================== */

    document
        .getElementById("shopNow")
        .addEventListener(
            "click",
            () => {

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            }
        );


    document
        .getElementById("exploreDeals")
        .addEventListener(
            "click",
            () => {

                document
                    .getElementById("deals")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            }
        );


    document
        .getElementById("buyDeal")
        .addEventListener(
            "click",
            () => {

                addToCart(2);

                openCart();

            }
        );


    /* ========================================
       NEWSLETTER
    ======================================== */

    document
        .getElementById("newsletterForm")
        .addEventListener(
            "submit",
            event => {

                event.preventDefault();

                const input =
                    document.getElementById(
                        "newsletterEmail"
                    );

                if (!input.value.includes("@")) {

                    showToast(
                        "Please enter a valid email"
                    );

                    return;

                }


                document.getElementById(
                    "newsletterMessage"
                ).style.display = "block";

                input.value = "";

                showToast(
                    "You're successfully subscribed!"
                );

            }
        );


    /* ========================================
       MOBILE MENU
    ======================================== */

    document
        .getElementById("mobileMenuBtn")
        .addEventListener(
            "click",
            () => {

                const menu =
                    document.getElementById(
                        "mobileMenu"
                    );

                menu.style.display =
                    menu.style.display === "block"
                        ? "none"
                        : "block";

            }
        );


    document
        .querySelectorAll(".mobile-menu a")
        .forEach(link => {

            link.addEventListener(
                "click",
                () => {

                    document.getElementById(
                        "mobileMenu"
                    ).style.display = "none";

                }
            );

        });


    /* ========================================
       COUNTDOWN
    ======================================== */

    const dealTarget =
        new Date(
            Date.now() +
            (24 * 60 + 36) * 60 * 1000
        );


    function updateCountdown() {

        const difference =
            dealTarget - new Date();


        if (difference <= 0) return;


        const days =
            Math.floor(
                difference /
                (1000 * 60 * 60 * 24)
            );


        const hours =
            Math.floor(
                (difference /
                    (1000 * 60 * 60)) %
                    24
            );


        const minutes =
            Math.floor(
                (difference /
                    (1000 * 60)) %
                    60
            );


        const seconds =
            Math.floor(
                (difference / 1000) %
                60
            );


        document.getElementById("days")
            .textContent =
                String(days).padStart(2, "0");

        document.getElementById("hours")
            .textContent =
                String(hours).padStart(2, "0");

        document.getElementById("minutes")
            .textContent =
                String(minutes).padStart(2, "0");

        document.getElementById("seconds")
            .textContent =
                String(seconds).padStart(2, "0");

    }


    updateCountdown();

    setInterval(
        updateCountdown,
        1000
    );


    /* ========================================
       YEAR
    ======================================== */

    document.getElementById("year")
        .textContent =
            new Date().getFullYear();


    /* ========================================
       INITIALIZATION
    ======================================== */

    renderCategories();

    renderProducts();

    updateCartUI();

</script>

</body>
</html>
