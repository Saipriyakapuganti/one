<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Nexus · orange edit</title>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;700;800&family=Quicksand:wght@500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        :root {
            --bg: #f9f6f0;
            --card: #ffffff;
            --ink: #1a1a24;
            --ink-light: #3b3b4a;
            --orange: #f25c32;
            --orange-soft: #fde2d6;
            --orange-glow: #f25c3222;
            --muted: #7a7a8a;
            --border-light: #eae5dc;
            --radius: 24px;
            --shadow: 0 6px 24px rgba(0, 0, 0, 0.02);
            --shadow-hover: 0 18px 40px rgba(0, 0, 0, 0.04);
        }
        body {
            font-family: 'Outfit', system-ui, sans-serif;
            background: var(--bg);
            color: var(--ink);
            line-height: 1.5;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        /* buttons — orange pulse */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            border: none;
            padding: 12px 30px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 15px;
            background: var(--ink);
            color: #fff;
            transition: 0.2s;
            letter-spacing: 0.2px;
        }
        .btn-orange {
            background: var(--orange);
            color: #fff;
            box-shadow: 0 4px 12px rgba(242, 92, 50, 0.25);
        }
        .btn-orange:hover {
            background: #d94e2a;
            transform: scale(0.96);
            box-shadow: 0 8px 20px rgba(242, 92, 50, 0.3);
        }
        .btn-ghost-light {
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(4px);
            color: #fff;
            border: 1px solid rgba(255, 255, 255, 0.15);
        }
        .btn-ghost-light:hover {
            background: rgba(255, 255, 255, 0.18);
        }
        .btn-outline-ink {
            background: transparent;
            color: var(--ink);
            border: 1.5px solid var(--ink);
        }
        .btn-outline-ink:hover {
            background: var(--ink);
            color: #fff;
        }

        /* header — clean, orange accent */
        header {
            padding: 12px 0;
            background: rgba(255, 255, 255, 0.75);
            backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.02);
            position: sticky;
            top: 0;
            z-index: 99;
        }
        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .logo {
            font-weight: 800;
            font-size: 24px;
            letter-spacing: -0.4px;
        }
        .logo i {
            color: var(--orange);
            margin-right: 6px;
        }
        .logo span {
            color: var(--orange);
        }
        .nav-links {
            display: flex;
            gap: 6px;
            list-style: none;
        }
        .nav-links a {
            padding: 8px 18px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 14px;
            color: var(--muted);
            transition: 0.2s;
        }
        .nav-links a:hover,
        .nav-links a.active {
            background: var(--orange-soft);
            color: var(--orange);
        }
        .header-actions {
            display: flex;
            gap: 6px;
            align-items: center;
        }
        .icon-btn {
            width: 44px;
            height: 44px;
            border-radius: 60px;
            display: grid;
            place-items: center;
            background: transparent;
            transition: 0.2s;
            color: var(--muted);
            font-size: 18px;
            border: none;
        }
        .icon-btn:hover {
            background: var(--orange-soft);
            color: var(--orange);
        }
        .cart-badge {
            position: relative;
        }
        .cart-badge .count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--orange);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 40px;
            display: grid;
            place-items: center;
        }
        .search-bar {
            display: flex;
            align-items: center;
            background: #fff;
            border-radius: 60px;
            padding: 4px 6px 4px 18px;
            border: 1px solid var(--border-light);
            transition: 0.2s;
        }
        .search-bar:focus-within {
            border-color: var(--orange);
            box-shadow: 0 0 0 4px rgba(242, 92, 50, 0.08);
        }
        .search-bar input {
            border: none;
            background: transparent;
            padding: 8px 0;
            font-size: 14px;
            outline: none;
            width: 140px;
            color: var(--ink);
        }
        .search-bar button {
            border: none;
            background: var(--orange);
            color: #fff;
            border-radius: 60px;
            width: 38px;
            height: 38px;
            font-size: 15px;
            transition: 0.2s;
        }
        .search-bar button:hover {
            background: #d94e2a;
        }
        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            color: var(--ink);
        }

        /* hero — warm orange gradient */
        .hero {
            background: linear-gradient(145deg, #1f1f2e, #14141e);
            border-radius: var(--radius);
            margin: 20px 0 0;
            padding: 64px 48px;
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            right: -80px;
            bottom: -80px;
            width: 460px;
            height: 460px;
            background: radial-gradient(circle, var(--orange), transparent 70%);
            opacity: 0.25;
            border-radius: 50%;
            pointer-events: none;
        }
        .hero::after {
            content: '';
            position: absolute;
            left: -40px;
            top: -40px;
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, #f25c3222, transparent 70%);
            border-radius: 50%;
            pointer-events: none;
        }
        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 580px;
        }
        .hero .badge {
            display: inline-block;
            background: rgba(242, 92, 50, 0.2);
            color: var(--orange-soft);
            padding: 4px 20px;
            border-radius: 60px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: 0.5px;
            border: 1px solid rgba(242, 92, 50, 0.15);
        }
        .hero h1 {
            font-family: 'Quicksand', sans-serif;
            font-weight: 700;
            font-size: 48px;
            color: #fff;
            line-height: 1.1;
            margin: 14px 0 12px;
        }
        .hero h1 i {
            color: var(--orange);
            font-style: normal;
        }
        .hero p {
            color: rgba(255, 255, 255, 0.7);
            font-size: 17px;
            max-width: 440px;
            margin-bottom: 28px;
        }
        .hero-actions {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        /* sections */
        .section {
            padding: 52px 0;
        }
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 30px;
            flex-wrap: wrap;
        }
        .section-header h2 {
            font-weight: 700;
            font-size: 28px;
            letter-spacing: -0.3px;
        }
        .section-header .sub {
            color: var(--muted);
            font-size: 15px;
            margin-top: 2px;
        }
        .section-header a {
            color: var(--orange);
            font-weight: 600;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        /* categories */
        .cat-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }
        .cat-card {
            background: var(--card);
            border-radius: var(--radius);
            padding: 24px 8px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: 0.2s;
            border: 1px solid transparent;
            cursor: default;
        }
        .cat-card:hover {
            border-color: var(--orange-soft);
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }
        .cat-card .icon {
            background: var(--orange-soft);
            width: 56px;
            height: 56px;
            border-radius: 60px;
            display: grid;
            place-items: center;
            margin: 0 auto 12px;
            font-size: 24px;
            color: var(--orange);
            transition: 0.2s;
        }
        .cat-card:hover .icon {
            background: var(--orange);
            color: #fff;
        }
        .cat-card h4 {
            font-weight: 600;
            font-size: 15px;
        }
        .cat-card .count {
            font-size: 13px;
            color: var(--muted);
        }

        /* product grid */
        .prod-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
        }
        .prod-card {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: 0.25s;
            border: 1px solid transparent;
            display: flex;
            flex-direction: column;
        }
        .prod-card:hover {
            border-color: var(--orange-soft);
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
        }
        .prod-card .img-wrap {
            background: #f3ede6;
            aspect-ratio: 1/1;
            position: relative;
            overflow: hidden;
        }
        .prod-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.3s;
        }
        .prod-card:hover .img-wrap img {
            transform: scale(1.05);
        }
        .prod-card .badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--orange);
            color: #fff;
            padding: 4px 16px;
            border-radius: 60px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.4px;
        }
        .prod-card .badge.sale {
            background: #c97d3a;
            color: #fff;
        }
        .prod-card .wish {
            position: absolute;
            top: 14px;
            right: 14px;
            background: rgba(255, 255, 255, 0.88);
            backdrop-filter: blur(4px);
            border-radius: 60px;
            width: 38px;
            height: 38px;
            border: none;
            font-size: 16px;
            color: var(--muted);
            transition: 0.2s;
        }
        .prod-card .wish:hover {
            color: var(--orange);
            background: #fff;
        }
        .prod-card .body {
            padding: 16px 18px 8px;
            flex: 1;
        }
        .prod-card .body .cat {
            font-size: 12px;
            color: var(--muted);
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: 0.6px;
        }
        .prod-card .body h5 {
            font-weight: 600;
            font-size: 16px;
            margin: 4px 0 6px;
            line-height: 1.2;
        }
        .prod-card .body .price {
            font-weight: 700;
            font-size: 19px;
            color: var(--orange);
        }
        .prod-card .body .old {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 14px;
            margin-left: 8px;
            font-weight: 400;
        }
        .prod-card .body .stars {
            color: #d4a13e;
            font-size: 14px;
            letter-spacing: 2px;
        }
        .prod-card .body .stars span {
            color: var(--muted);
            letter-spacing: 0;
            font-size: 13px;
            margin-left: 4px;
        }
        .prod-card .footer {
            padding: 0 18px 18px;
        }
        .prod-card .footer .add {
            width: 100%;
            padding: 12px;
            border-radius: 60px;
            background: var(--ink);
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            border: none;
            transition: 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .prod-card .footer .add:hover {
            background: var(--orange);
        }
        .prod-card .footer .add.added {
            background: #4f8b7a;
        }

        /* deal */
        .deal-wrap {
            display: flex;
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            border: 1px solid var(--border-light);
        }
        .deal-wrap .deal-img {
            flex: 0 0 44%;
            background: #ddd6cc;
            min-height: 280px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            padding: 36px 44px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            background: var(--orange-soft);
            color: var(--orange);
            padding: 4px 18px;
            border-radius: 60px;
            font-weight: 700;
            font-size: 12px;
            letter-spacing: 0.5px;
            align-self: flex-start;
            margin-bottom: 8px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 30px;
            font-weight: 700;
            margin-bottom: 4px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 14px;
        }
        .deal-wrap .deal-content .big-price {
            font-size: 32px;
            font-weight: 800;
            color: var(--orange);
        }
        .deal-wrap .deal-content .big-price .old {
            font-size: 20px;
            font-weight: 400;
            color: var(--muted);
            text-decoration: line-through;
            margin-left: 12px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            margin: 4px 0 14px;
        }
        .deal-wrap .deal-content .stock strong {
            color: var(--orange);
        }
        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 12px 0 20px;
        }
        .timer-box {
            background: var(--ink);
            color: #fff;
            padding: 8px 16px;
            border-radius: 16px;
            min-width: 64px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 24px;
            font-weight: 700;
        }
        .timer-box .label {
            font-size: 10px;
            opacity: 0.6;
            text-transform: uppercase;
        }

        /* testimonials */
        .testi-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 2px 16px;
            scroll-snap-type: x mandatory;
        }
        .testi-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testi-scroll::-webkit-scrollbar-thumb {
            background: var(--orange-soft);
            border-radius: 20px;
        }
        .testi-card {
            flex: 0 0 310px;
            background: var(--card);
            border-radius: var(--radius);
            padding: 26px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            border: 1px solid transparent;
            transition: 0.2s;
        }
        .testi-card:hover {
            border-color: var(--orange-soft);
        }
        .testi-card .stars {
            color: #d4a13e;
            font-size: 16px;
            letter-spacing: 2px;
            margin-bottom: 6px;
        }
        .testi-card blockquote {
            font-size: 15px;
            font-style: italic;
            color: var(--ink-light);
            margin-bottom: 12px;
        }
        .testi-card .author {
            display: flex;
            gap: 12px;
            align-items: center;
        }
        .testi-card .author img {
            width: 44px;
            height: 44px;
            border-radius: 60px;
            object-fit: cover;
            background: #ddd;
        }
        .testi-card .author .name {
            font-weight: 600;
            font-size: 14px;
        }
        .testi-card .author .role {
            font-size: 13px;
            color: var(--muted);
        }

        /* newsletter — orange touch */
        .newsletter {
            background: var(--ink);
            border-radius: var(--radius);
            padding: 44px 52px;
            color: #fff;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            position: relative;
            overflow: hidden;
        }
        .newsletter::before {
            content: '';
            position: absolute;
            right: -60px;
            top: -60px;
            width: 260px;
            height: 260px;
            background: radial-gradient(circle, var(--orange), transparent 70%);
            opacity: 0.12;
            border-radius: 50%;
        }
        .newsletter .text h3 {
            font-weight: 700;
            font-size: 26px;
        }
        .newsletter .text p {
            opacity: 0.7;
        }
        .newsletter form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            max-width: 440px;
            flex: 1;
            position: relative;
            z-index: 2;
        }
        .newsletter input {
            flex: 1;
            min-width: 180px;
            padding: 14px 22px;
            border-radius: 60px;
            border: none;
            background: rgba(255, 255, 255, 0.08);
            color: #fff;
            outline: 1px solid transparent;
            transition: 0.2s;
        }
        .newsletter input::placeholder {
            color: rgba(255, 255, 255, 0.4);
        }
        .newsletter input:focus {
            outline-color: var(--orange);
            background: rgba(255, 255, 255, 0.14);
        }
        .newsletter .btn {
            background: var(--orange);
        }
        .newsletter .btn:hover {
            background: #d94e2a;
        }
        #newsletterMsg {
            width: 100%;
            margin-top: 8px;
            font-size: 14px;
            color: var(--orange-soft);
        }

        /* footer */
        footer {
            padding: 44px 0 24px;
            border-top: 1px solid var(--border-light);
            margin-top: 12px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 32px;
            margin-bottom: 28px;
        }
        .footer-grid .brand p {
            color: var(--muted);
            font-size: 14px;
            max-width: 280px;
        }
        .footer-grid .brand .socials {
            display: flex;
            gap: 8px;
            margin-top: 14px;
        }
        .footer-grid .brand .socials a {
            width: 40px;
            height: 40px;
            border-radius: 60px;
            background: var(--border-light);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: 0.2s;
        }
        .footer-grid .brand .socials a:hover {
            background: var(--orange);
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            margin-bottom: 12px;
            font-size: 15px;
        }
        .footer-grid .col ul {
            list-style: none;
        }
        .footer-grid .col ul li {
            margin-bottom: 6px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 14px;
            transition: 0.2s;
        }
        .footer-grid .col ul li a:hover {
            color: var(--orange);
        }
        .footer-bottom {
            text-align: center;
            color: var(--muted);
            font-size: 13px;
            border-top: 1px solid var(--border-light);
            padding-top: 20px;
        }

        /* responsive */
        @media (max-width: 992px) {
            .cat-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .prod-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 200px;
            }
            .hero h1 {
                font-size: 36px;
            }
        }
        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }
            .mobile-toggle {
                display: block;
            }
            .search-bar input {
                width: 90px;
            }
            .hero {
                padding: 40px 24px;
            }
            .hero h1 {
                font-size: 30px;
            }
            .cat-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .prod-grid {
                grid-template-columns: 1fr 1fr;
                gap: 14px;
            }
            .footer-grid {
                grid-template-columns: 1fr;
            }
            .newsletter {
                padding: 30px 22px;
                flex-direction: column;
                align-items: stretch;
                text-align: center;
            }
            .newsletter form {
                max-width: 100%;
            }
        }
        @media (max-width: 500px) {
            .prod-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .hero h1 {
                font-size: 24px;
            }
            .deal-wrap .deal-content {
                padding: 20px;
            }
            .timer-box {
                min-width: 48px;
                padding: 6px 10px;
            }
            .timer-box .num {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-flex">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
                <span class="logo"><i class="fas fa-bolt"></i>Nexus<span>.</span></span>
            </div>
            <ul class="nav-links" id="navLinks">
                <li><a href="#" class="active">Home</a></li>
                <li><a href="#categories">Shop</a></li>
                <li><a href="#products">Trend</a></li>
                <li><a href="#deals">Deal</a></li>
                <li><a href="#testimonials">Reviews</a></li>
            </ul>
            <div style="display:flex;gap:10px;align-items:center;">
                <div class="search-bar">
                    <input type="search" id="searchInput" placeholder="Find..." />
                    <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
                </div>
                <div class="header-actions">
                    <button class="icon-btn"><i class="far fa-user"></i></button>
                    <div class="cart-badge">
                        <button class="icon-btn" id="cartBtn"><i class="fas fa-bag-shopping"></i></button>
                        <span class="count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>
        <!-- mobile menu -->
        <div id="mobileMenu" style="display:none;background:#fff;padding:12px 20px;border-top:1px solid var(--border-light);">
            <ul style="list-style:none;display:flex;flex-direction:column;gap:4px;">
                <li><a href="#">Home</a></li>
                <li><a href="#categories">Shop</a></li>
                <li><a href="#products">Trend</a></li>
                <li><a href="#deals">Deal</a></li>
                <li><a href="#testimonials">Reviews</a></li>
                <li><a href="#">Account</a></li>
            </ul>
        </div>
    </header>

    <main>
        <!-- hero -->
        <section class="container hero">
            <div class="hero-content">
                <span class="badge"><i class="fas fa-sparkles"></i> fresh orange drop</span>
                <h1>Style that <i>pops</i> <br>with energy</h1>
                <p>Curated essentials, bold accents. Free delivery on your first order.</p>
                <div class="hero-actions">
                    <button class="btn btn-orange" id="shopNow"><i class="fas fa-store"></i> Explore</button>
                    <button class="btn btn-ghost-light" id="exploreDeals">Flash deals</button>
                </div>
            </div>
        </section>

        <!-- categories -->
        <section class="section container" id="categories">
            <div class="section-header">
                <div><h2>Categories</h2><div class="sub">pick your vibe</div></div>
                <a href="#">all <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="cat-grid" id="categoriesGrid"></div>
        </section>

        <!-- products -->
        <section class="section container" id="products">
            <div class="section-header">
                <div><h2>Trending now</h2><div class="sub">community favourites</div></div>
                <a href="#">see all <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="prod-grid" id="productsGrid"></div>
        </section>

        <!-- deal -->
        <section class="section container" id="deals">
            <div class="section-header"><div><h2>⚡ Flash deal</h2><div class="sub">limited stock</div></div></div>
            <div class="deal-wrap">
                <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="deal" loading="lazy"></div>
                <div class="deal-content">
                    <span class="tag"><i class="fas fa-bolt"></i> 24h offer</span>
                    <h3>MacBook Air M2</h3>
                    <p class="desc">Ultra-slim, powerful, and made to last.</p>
                    <div><span class="big-price">$999 <span class="old">$1,199</span></span></div>
                    <p class="stock">Only <strong>12</strong> left — hurry</p>
                    <div class="timer-grid" id="dealTimer">
                        <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">days</div></div>
                        <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">hrs</div></div>
                        <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">min</div></div>
                        <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">sec</div></div>
                    </div>
                    <button class="btn btn-orange" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
                </div>
            </div>
        </section>

        <!-- testimonials -->
        <section class="section container" id="testimonials">
            <div class="section-header"><div><h2>Hear from us</h2><div class="sub">real reviews</div></div></div>
            <div class="testi-scroll" id="testimonialsList"></div>
        </section>

        <!-- newsletter -->
        <section class="section container">
            <div class="newsletter">
                <div class="text"><h3>Stay in loop</h3><p>exclusives & early access</p></div>
                <form id="newsletterForm" onsubmit="return false;">
                    <input type="email" id="newsletterEmail" placeholder="your@email.com" />
                    <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                    <div id="newsletterMsg"></div>
                </form>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand"><span class="logo" style="font-size:20px;"><i class="fas fa-bolt"></i>Nexus<span>.</span></span><p>Minimal · modern · orange energy.</p><div class="socials"><a href="#"><i class="fab fa-instagram"></i></a><a href="#"><i class="fab fa-twitter"></i></a><a href="#"><i class="fab fa-youtube"></i></a></div></div>
                <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li></ul></div>
                <div class="col"><h5>Support</h5><ul><li><a href="#">Help</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
                <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li></ul></div>
            </div>
            <div class="footer-bottom">&copy; <span id="year"></span> Nexus · all rights reserved</div>
        </div>
    </footer>

    <script>
        // DATA
        const CATS = [
            { name: 'Phones', icon: 'fa-mobile-screen', count: 24 },
            { name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { name: 'Audio', icon: 'fa-headphones', count: 31 },
            { name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];
        const PRODS = [
            { id: 1, title: 'iPhone 14 Pro', price: 1099, old: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', cat: 'Phones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, old: 0, rating: 4, reviews: 86, badge: '', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', cat: 'Laptops' },
            { id: 3, title: 'Apple Watch S8', price: 349, old: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', cat: 'Accessories'
