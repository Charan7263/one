<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nova • Dashboard</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    min-height: 100vh;
    color: white;
    background:
        radial-gradient(circle at 20% 20%, #6c5ce7, transparent 30%),
        radial-gradient(circle at 80% 80%, #00cec9, transparent 30%),
        #0b1020;
    overflow-x: hidden;
}

.container {
    width: 90%;
    max-width: 1000px;
    margin: auto;
    padding: 35px 0;
}

/* Navbar */
nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 60px;
}

.logo {
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 24px;
    font-weight: bold;
}

.logo-icon {
    width: 42px;
    height: 42px;
    display: grid;
    place-items: center;
    border-radius: 14px;
    background: linear-gradient(135deg, #a29bfe, #00cec9);
    box-shadow: 0 0 25px rgba(0,206,201,.5);
}

.nav-btn {
    padding: 10px 18px;
    border-radius: 25px;
    border: 1px solid rgba(255,255,255,.25);
    background: rgba(255,255,255,.08);
    color: white;
}

/* Hero */
.hero {
    text-align: center;
    margin-bottom: 45px;
}

.badge {
    display: inline-block;
    padding: 8px 16px;
    border-radius: 30px;
    background: rgba(255,255,255,.1);
    border: 1px solid rgba(255,255,255,.2);
    margin-bottom: 20px;
    font-size: 13px;
}

h1 {
    font-size: clamp(42px, 8vw, 75px);
    line-height: 1;
    margin-bottom: 20px;
}

.gradient-text {
    background: linear-gradient(90deg, #a29bfe, #00cec9, #ffeaa7);
    -webkit-background-clip: text;
    color: transparent;
}

.hero p {
    color: #b8bfd8;
    max-width: 600px;
    margin: auto;
    line-height: 1.6;
}

/* Cards */
.cards {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 18px;
}

.card {
    padding: 25px;
    border-radius: 22px;
    background: rgba(255,255,255,.08);
    border: 1px solid rgba(255,255,255,.15);
    backdrop-filter: blur(15px);
    transition: .3s;
}

.card:hover {
    transform: translateY(-8px) scale(1.02);
    background: rgba(255,255,255,.13);
}

.icon {
    font-size: 30px;
    margin-bottom: 18px;
}

.card h3 {
    margin-bottom: 8px;
}

.card p {
    color: #aeb6d1;
    font-size: 14px;
}

.number {
    font-size: 32px;
    font-weight: bold;
    margin-top: 15px;
}

/* CTA */
.cta {
    margin-top: 30px;
    padding: 25px;
    text-align: center;
    border-radius: 22px;
    background: linear-gradient(
        135deg,
        rgba(162,155,254,.25),
        rgba(0,206,201,.18)
    );
    border: 1px solid rgba(255,255,255,.15);
}

button {
    margin-top: 15px;
    padding: 12px 25px;
    border: none;
    border-radius: 25px;
    color: white;
    font-weight: bold;
    cursor: pointer;
    background: linear-gradient(90deg,#6c5ce7,#00cec9);
}

footer {
    text-align: center;
    margin-top: 35px;
    color: #7f89a8;
    font-size: 13px;
}

@media(max-width:700px) {
    .cards {
        grid-template-columns: 1fr;
    }
}
</style>
</head>

<body>

<div class="container">

    <nav>
        <div class="logo">
            <div class="logo-icon">✦</div>
            NOVA
        </div>

        <div class="nav-btn">
            <% 
                String user = "Midhilesh";
            %>
            Hi, <%= user %> 👋
        </div>
    </nav>

    <section class="hero">

        <div class="badge">
            🚀 Powered by Java + JSP
        </div>

        <h1>
            Build something
            <span class="gradient-text">crazy.</span>
        </h1>

        <p>
            A tiny Java web experience with a big personality.
            Simple. Fast. Beautiful.
        </p>

    </section>

    <section class="cards">

        <div class="card">
            <div class="icon">⚡</div>
            <h3>Performance</h3>
            <p>Fast and lightweight web experience.</p>
            <div class="number">99%</div>
        </div>

        <div class="card">
            <div class="icon">☁️</div>
            <h3>Cloud Ready</h3>
            <p>Deploy your application anywhere.</p>
            <div class="number">24/7</div>
        </div>

        <div class="card">
            <div class="icon">🔥</div>
            <h3>Java Power</h3>
            <p>Running smoothly on your Tomcat server.</p>
            <div class="number">JSP</div>
        </div>

    </section>

    <div class="cta">

        <h2>Ready to deploy? 🚀</h2>

        <p style="margin-top:8px;color:#aeb6d1;">
            Build → Package → Deploy → Flex 😎
        </p>

        <button onclick="alert('🚀 Deployed successfully!')">
            Launch Project
        </button>

    </div>

    <footer>
        Built with ❤️ using JSP • Java • Tomcat
    </footer>

</div>

</body>
</html>
