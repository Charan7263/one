<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String candidate = "DevOps Engineer";
    int xp = 8450;
    int level = 12;
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>DEVOPS ENGINEER OS 🚀</title>

<style>

/* =========================================================
   DEVOPS ENGINEER OS
   SINGLE JSP FILE
   CSS IS EMBEDDED HERE
   ========================================================= */

* {
    box-sizing: border-box;
    scroll-behavior: smooth;
}

body {
    margin: 0;
    background:
        radial-gradient(circle at 10% 10%, #172554 0, transparent 30%),
        radial-gradient(circle at 90% 20%, #312e81 0, transparent 30%),
        #050816;
    color: #f8fafc;
    font-family: Arial, Helvetica, sans-serif;
}

body:before {
    content: "";
    position: fixed;
    inset: 0;
    pointer-events: none;
    opacity: .08;
    background-image:
        linear-gradient(#fff 1px, transparent 1px),
        linear-gradient(90deg,#fff 1px,transparent 1px);
    background-size: 40px 40px;
}

a {
    color: inherit;
    text-decoration: none;
}

.container {
    width: min(1400px, 94%);
    margin: auto;
}

.nav {
    position: sticky;
    top: 0;
    z-index: 1000;
    backdrop-filter: blur(20px);
    background: rgba(5,8,22,.78);
    border-bottom: 1px solid #263244;
}

.nav-inner {
    width: min(1400px,94%);
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 0;
}

.logo {
    font-size: 22px;
    font-weight: 900;
}

.logo span {
    color: #22d3ee;
}

.nav-links {
    display: flex;
    gap: 10px;
    overflow-x: auto;
}

.nav-links a {
    padding: 9px 13px;
    border-radius: 10px;
    color: #94a3b8;
    font-size: 13px;
}

.nav-links a:hover {
    color: white;
    background: #172033;
}

.hero {
    min-height: 92vh;
    display: grid;
    grid-template-columns: 1.2fr .8fr;
    gap: 50px;
    align-items: center;
}

.badge {
    display: inline-block;
    padding: 8px 14px;
    border: 1px solid #164e63;
    border-radius: 999px;
    background: #082f49;
    color: #67e8f9;
    font-size: 13px;
    font-weight: bold;
}

.hero h1 {
    font-size: clamp(50px,7vw,100px);
    line-height: .95;
    margin: 20px 0;
    letter-spacing: -5px;
}

.gradient {
    background: linear-gradient(
        90deg,
        #22d3ee,
        #818cf8,
        #e879f9
    );
    -webkit-background-clip: text;
    color: transparent;
}

.hero p {
    font-size: 20px;
    line-height: 1.7;
    color: #94a3b8;
    max-width: 750px;
}

.btn {
    display: inline-block;
    margin-top: 20px;
    padding: 14px 20px;
    border-radius: 13px;
    background: linear-gradient(90deg,#06b6d4,#6366f1);
    font-weight: bold;
    box-shadow: 0 10px 30px rgba(99,102,241,.25);
}

.btn:hover {
    transform: translateY(-2px);
}

.hero-card {
    padding: 30px;
    border-radius: 30px;
    background: rgba(15,23,42,.8);
    border: 1px solid #334155;
    box-shadow: 0 30px 100px rgba(0,0,0,.4);
}

.hero-svg {
    width: 100%;
    height: auto;
}

.section {
    padding: 90px 0;
}

.section-title {
    margin-bottom: 40px;
}

.section-title small {
    color: #22d3ee;
    font-weight: bold;
    letter-spacing: 2px;
}

.section-title h2 {
    font-size: 45px;
    margin: 10px 0;
}

.section-title p {
    color: #94a3b8;
    max-width: 850px;
    line-height: 1.7;
}

.grid {
    display: grid;
    grid-template-columns:
        repeat(auto-fit,minmax(280px,1fr));
    gap: 20px;
}

.card {
    background: rgba(15,23,42,.78);
    border: 1px solid #263244;
    border-radius: 24px;
    padding: 26px;
    transition: .3s;
}

.card:hover {
    transform: translateY(-7px);
    border-color: #22d3ee;
    box-shadow:
        0 20px 60px rgba(0,0,0,.35);
}

.card-icon {
    font-size: 48px;
}

.card h3 {
    font-size: 23px;
}

.card p,
.card li {
    color: #a5b4fc;
    line-height: 1.7;
}

.level {
    display: inline-block;
    padding: 5px 10px;
    border-radius: 8px;
    background: #172554;
    color: #67e8f9;
    font-size: 11px;
    font-weight: bold;
}

.pipeline {
    display: flex;
    gap: 8px;
    align-items: center;
    overflow-x: auto;
    padding: 25px 0;
}

.pipe {
    min-width: 130px;
    text-align: center;
    padding: 20px 12px;
    border-radius: 18px;
    background: #111827;
    border: 1px solid #334155;
}

.pipe .emoji {
    font-size: 35px;
}

.arrow {
    color: #22d3ee;
    font-size: 25px;
}

.terminal {
    background: #020617;
    border: 1px solid #1e293b;
    border-radius: 18px;
    overflow: hidden;
    font-family: Consolas, monospace;
}

.terminal-top {
    padding: 10px 15px;
    background: #111827;
    color: #64748b;
}

.terminal-body {
    padding: 22px;
    color: #4ade80;
    line-height: 1.8;
    overflow-x: auto;
}

.command {
    color: #f8fafc;
}

.comment {
    color: #64748b;
}

.architecture {
    background: #020617;
    border: 1px solid #1e293b;
    padding: 30px;
    border-radius: 25px;
    overflow-x: auto;
}

.arch-node {
    padding: 16px 25px;
    margin: 10px auto;
    width: max-content;
    min-width: 160px;
    text-align: center;
    border-radius: 15px;
    background: #111827;
    border: 1px solid #334155;
}

.down {
    text-align: center;
    color: #22d3ee;
    font-size: 25px;
}

.scenario {
    border-left: 5px solid #f43f5e;
    background: rgba(127,29,29,.15);
}

.question {
    color: #facc15;
    font-weight: bold;
}

.answer {
    margin-top: 15px;
    padding: 15px;
    border-radius: 12px;
    background: #020617;
    color: #cbd5e1;
}

.progress-wrap {
    background: #111827;
    border-radius: 999px;
    height: 12px;
    overflow: hidden;
}

.progress {
    height: 100%;
    width: 72%;
    background: linear-gradient(
        90deg,
        #22d3ee,
        #818cf8
    );
}

.stats {
    display: grid;
    grid-template-columns:
        repeat(auto-fit,minmax(180px,1fr));
    gap: 15px;
}

.stat {
    background: #0f172a;
    border: 1px solid #263244;
    padding: 22px;
    border-radius: 18px;
}

.stat strong {
    display: block;
    font-size: 30px;
    color: #22d3ee;
}

.quiz button {
    display: block;
    width: 100%;
    margin: 8px 0;
    padding: 13px;
    border: 1px solid #334155;
    background: #111827;
    color: white;
    border-radius: 10px;
    text-align: left;
    cursor: pointer;
}

.quiz button:hover {
    background: #1e293b;
}

.correct {
    border-color: #22c55e !important;
    background: #052e16 !important;
}

footer {
    padding: 70px 0;
    text-align: center;
    color: #64748b;
}

.mobile-menu {
    display:none;
}

@media(max-width:900px) {

    .hero {
        grid-template-columns: 1fr;
        padding-top: 50px;
    }

    .hero h1 {
        letter-spacing: -3px;
    }

    .nav-links {
        display:none;
    }

    .mobile-menu {
        display:block;
    }

}

</style>

</head>

<body>


<!-- =====================================================
     NAVIGATION
     ===================================================== -->

<nav class="nav">

<div class="nav-inner">

<div class="logo">
🚀 <span>DEVOPS</span> ENGINEER OS
</div>

<div class="nav-links">

<a href="#mindset">Mindset</a>
<a href="#linux">Linux</a>
<a href="#network">Network</a>
<a href="#git">Git</a>
<a href="#tomcat">Tomcat</a>
<a href="#docker">Docker</a>
<a href="#jenkins">Jenkins</a>
<a href="#aws">AWS</a>
<a href="#k8s">K8s</a>
<a href="#security">Security</a>
<a href="#monitoring">Monitoring</a>
<a href="#incidents">Incidents</a>

</div>

</div>

</nav>


<!-- =====================================================
     HERO
     ===================================================== -->

<header class="container hero">

<div>

<span class="badge">
🔥 2 YEARS → PRODUCTION-READY DEVOPS MINDSET
</span>

<h1>
Become a
<br>
<span class="gradient">
DevOps Engineer
</span>
</h1>

<p>

This is not a list of commands.

This is a production-engineering journey:
Linux → Networking → Git → Maven → Tomcat →
Docker → Jenkins → CI/CD → AWS → Terraform →
Kubernetes → Security → Monitoring →
Troubleshooting.

</p>

<p>

<strong>
Think like an engineer.
Debug like an engineer.
Deploy like an engineer.
</strong>

</p>

<a class="btn" href="#roadmap">
START THE JOURNEY 🚀
</a>

</div>


<div class="hero-card">

<svg class="hero-svg"
     viewBox="0 0 500 450">

<circle
cx="250"
cy="225"
r="190"
fill="#0f172a"
stroke="#22d3ee"
stroke-width="3"/>

<!-- head -->

<circle
cx="250"
cy="135"
r="55"
fill="#ffd6a5"/>

<!-- hair -->

<path
d="M195 130 Q250 45 305 130"
fill="#111827"/>

<!-- eyes -->

<circle cx="230" cy="135" r="6"/>
<circle cx="270" cy="135" r="6"/>

<!-- smile -->

<path
d="M230 160 Q250 180 270 160"
fill="none"
stroke="#111827"
stroke-width="5"/>

<!-- laptop -->

<rect
x="150"
y="210"
width="200"
height="120"
rx="12"
fill="#020617"
stroke="#334155"/>

<text
x="250"
y="260"
text-anchor="middle"
fill="#22d3ee"
font-size="22">

DEVOPS

</text>

<text
x="250"
y="290"
text-anchor="middle"
fill="#4ade80"
font-size="15">

deploy.sh

</text>

<!-- cloud -->

<text
x="250"
y="385"
text-anchor="middle"
font-size="45">

☁️ 🚀 ☸️

</text>

</svg>

</div>

</header>


<!-- =====================================================
     STATUS
     ===================================================== -->

<section class="section">

<div class="container">

<div class="stats">

<div class="stat">
<strong><%= level %></strong>
Current Level
</div>

<div class="stat">
<strong><%= xp %></strong>
XP Earned
</div>

<div class="stat">
<strong>26</strong>
Engineering Modules
</div>

<div class="stat">
<strong>50+</strong>
Production Scenarios
</div>

</div>

<br>

<div class="card">

<h3>🎯 Overall Engineering Progress</h3>

<div class="progress-wrap">

<div class="progress"></div>

</div>

<br>

72% — Keep building real projects.

</div>

</div>

</section>


<!-- =====================================================
     MINDSET
     ===================================================== -->

<section class="section" id="mindset">

<div class="container">

<div class="section-title">

<small>MODULE 00</small>

<h2>🧠 The DevOps Mindset</h2>

<p>

The biggest difference between a junior and experienced
engineer is not the number of commands they know.

It is how they approach problems.

</p>

</div>


<div class="grid">

<div class="card">

<div class="card-icon">🟢</div>

<h3>Junior Thinking</h3>

<p>

"Deployment failed."

"Server is down."

"Docker stopped."

</p>

</div>


<div class="card">

<div class="card-icon">🔥</div>

<h3>Experienced Thinking</h3>

<p>

What changed?

Where exactly did it fail?

Can I reproduce it?

What evidence do the logs provide?

What is the blast radius?

How do I prevent it from happening again?

</p>

</div>


<div class="card">

<div class="card-icon">🧠</div>

<h3>Golden Rule</h3>

<p>

OBSERVE

↓

IDENTIFY

↓

ISOLATE

↓

FIX

↓

VERIFY

↓

PREVENT

</p>

</div>

</div>

</div>

</section>


<!-- =====================================================
     ROADMAP
     ===================================================== -->

<section class="section" id="roadmap">

<div class="container">

<div class="section-title">

<small>MASTER ROADMAP</small>

<h2>🗺️ From Developer → DevOps Engineer</h2>

</div>

<div class="pipeline">

<div class="pipe">
<div class="emoji">🐧</div>
Linux
</div>

<div class="arrow">→</div>

<div class="pipe">
<div class="emoji">🌐</div>
Networking
</div>

<div class="arrow">→</div>

<div class="pipe">
<div class="emoji">🌳</div>
Git
</div>

<div class="arrow">→</div>

<div class="pipe">
<div class="emoji">☕</div>
Java
</div>

<div class="arrow">→</div>

<div class="pipe">
<div class="emoji">🐱</div>
Tomcat
</div>

<div class="arrow">→</div>

<div class="pipe">
<div class="emoji">🐳</div>
Docker
</div>

<div class="arrow">→</div>

<div class="pipe">
<div class="emoji">⚙️</div>
Jenkins
</div>

<div class="arrow">→</div>

<div class="pipe">
<div class="emoji">☁️</div>
AWS
</div>

<div class="arrow">→</div>

<div class="pipe">
<div class="emoji">☸️</div>
Kubernetes
</div>

</div>

</div>

</section>


<!-- =====================================================
     LINUX
     ===================================================== -->

<section class="section" id="linux">

<div class="container">

<div class="section-title">

<small>MODULE 01</small>

<h2>🐧 Linux — Your DevOps House</h2>

<p>

Most production environments still require you to
understand processes, filesystems, permissions,
networking, services and logs.

</p>

</div>


<div class="grid">

<div class="card">

<span class="level">BEGINNER</span>

<h3>Filesystem</h3>

<pre>
/
├── etc
├── var
│   └── log
├── home
├── opt
├── tmp
├── usr
└── app
</pre>

</div>


<div class="card">

<span class="level">INTERMEDIATE</span>

<h3>Processes</h3>

<pre>
ps -ef
top
htop
kill PID
kill -9 PID
systemctl status nginx
journalctl -u nginx
</pre>

</div>


<div class="card">

<span class="level">PRODUCTION</span>

<h3>Disk / Memory</h3>

<pre>
df -h
du -sh *
free -m
vmstat
iostat
uptime
</pre>

</div>

</div>


<div class="terminal">

<div class="terminal-top">
● ● ● &nbsp; production-debug.sh
</div>

<div class="terminal-body">

<span class="comment">
# Application is down. Don't restart blindly.
</span>

<br>

<span class="command">
$ ps -ef | grep java
</span>

<br>

<span class="command">
$ ss -lntp
</span>

<br>

<span class="command">
$ df -h
</span>

<br>

<span class="command">
$ free -m
</span>

<br>

<span class="command">
$ journalctl -u tomcat --since "30 minutes ago"
</span>

<br>

<span class="comment">
# Evidence first. Action second.
</span>

</div>

</div>

</div>

</section>


<!-- =====================================================
     NETWORKING
     ===================================================== -->

<section class="section" id="network">

<div class="container">

<div class="section-title">

<small>MODULE 02</small>

<h2>🌐 Networking</h2>

<p>

A DevOps engineer must understand what happens between
the browser and the application.

</p>

</div>


<div class="architecture">

<div class="arch-node">🌍 Browser</div>

<div class="down">↓</div>

<div class="arch-node">DNS</div>

<div class="down">↓</div>

<div class="arch-node">🔀 Load Balancer</div>

<div class="down">↓</div>

<div class="arch-node">NGINX / Reverse Proxy</div>

<div class="down">↓</div>

<div class="arch-node">🐱 Tomcat :8080</div>

<div class="down">↓</div>

<div class="arch-node">☕ Java Application</div>

<div class="down">↓</div>

<div class="arch-node">🗄️ Database :1521</div>

</div>


<br>


<div class="grid">

<div class="card">

<h3>Know These</h3>

<ul>

<li>IP Address</li>
<li>DNS</li>
<li>TCP / UDP</li>
<li>HTTP / HTTPS</li>
<li>Ports</li>
<li>TLS</li>
<li>NAT</li>
<li>Subnet / CIDR</li>
<li>Firewall</li>
<li>Load Balancer</li>
<li>Reverse Proxy</li>

</ul>

</div>


<div class="card">

<h3>Debugging Toolkit</h3>

<pre>
ping
curl -v
wget
nslookup
dig
telnet
nc
traceroute
ss
netstat
</pre>

</div>

</div>

</div>

</section>


<!-- =====================================================
     GIT
     ===================================================== -->

<section class="section" id="git">

<div class="container">

<div class="section-title">

<small>MODULE 03</small>

<h2>🌳 Git — Time Machine for Code</h2>

</div>


<div class="architecture">

<div class="arch-node">
👨‍💻 Working Directory
</div>

<div class="down">↓ git add</div>

<div class="arch-node">
📦 Staging Area
</div>

<div class="down">↓ git commit</div>

<div class="arch-node">
🗃️ Local Repository
</div>

<div class="down">↓ git push</div>

<div class="arch-node">
☁️ GitHub
</div>

</div>


<div class="terminal">

<div class="terminal-top">
git.sh
</div>

<div class="terminal-body">

$ git clone repository

<br>

$ git checkout -b feature/login

<br>

$ git add .

<br>

$ git commit -m "Add login feature"

<br>

$ git push origin feature/login

<br>

$ git log --oneline

<br>

$ git diff

<br>

$ git revert &lt;commit&gt;

</div>

</div>

</div>

</section>


<!-- =====================================================
     TOMCAT
     ===================================================== -->

<section class="section" id="tomcat">

<div class="container">

<div class="section-title">

<small>MODULE 04</small>

<h2>🐱 Java + Tomcat</h2>

<p>

Understand what your DevOps pipeline is actually
building and deploying.

</p>

</div>


<div class="architecture">

<div class="arch-node">👨‍💻 Java Source</div>

<div class="down">↓</div>

<div class="arch-node">🏗️ Maven</div>

<div class="down">↓</div>

<div class="arch-node">📦 app.war</div>

<div class="down">↓</div>

<div class="arch-node">🐱 Tomcat</div>

<div class="down">↓</div>

<div class="arch-node">🌐 :8080</div>

</div>


<div class="grid">

<div class="card">

<h3>Tomcat Concepts</h3>

<ul>

<li>JVM</li>
<li>WAR</li>
<li>JAR</li>
<li>Servlet</li>
<li>Connector</li>
<li>Threads</li>
<li>Heap</li>
<li>Garbage Collection</li>
<li>Connection Pool</li>
<li>Access Logs</li>
<li>catalina.out</li>

</ul>

</div>


<div class="card">

<h3>Deployment</h3>

<pre>
mvn clean package

scp app.war server:/tmp/

cp app.war \
/opt/tomcat/webapps/

systemctl restart tomcat
</pre>

</div>

</div>

</div>

</section>


<!-- =====================================================
     DOCKER
     ===================================================== -->

<section class="section" id="docker">

<div class="container">

<div class="section-title">

<small>MODULE 05</small>

<h2>🐳 Docker — Package the Application</h2>

<p>

Don't just learn docker run.

Understand images, layers, containers,
networking, volumes, registries, security,
multi-stage builds and production debugging.

</p>

</div>


<div class="card">

<h3>Build #1 — Java Application</h3>

<div class="terminal">

<div class="terminal-body">

FROM eclipse-temurin:21-jre

<br><br>

WORKDIR /app

<br><br>

COPY target/app.jar app.jar

<br><br>

EXPOSE 8080

<br><br>

ENTRYPOINT ["java","-jar","app.jar"]

</div>

</div>

</div>


<br>


<div class="card">

<h3>Build #2 — Maven + Docker</h3>

<pre>
SOURCE
   ↓
Maven
   ↓
Compile
   ↓
Test
   ↓
Package
   ↓
JAR
   ↓
Docker Image
   ↓
Container
</pre>

</div>


<br>


<div class="card">

<h3>🔥 Build #3 — Multi-Stage Docker</h3>

<div class="terminal">

<div class="terminal-body">

FROM maven:3.9-eclipse-temurin-21 AS build

<br><br>

WORKDIR /build

<br><br>

COPY pom.xml .

<br>

RUN mvn dependency:go-offline

<br><br>

COPY src ./src

<br>

RUN mvn clean package

<br><br>


FROM eclipse-temurin:21-jre

<br><br>

WORKDIR /app

<br><br>

COPY --from=build \
/build/target/app.jar app.jar

<br><br>

USER 1001

<br><br>

EXPOSE 8080

<br><br>

ENTRYPOINT ["java","-jar","app.jar"]

</div>

</div>

</div>


<br>


<div class="card">

<h3>🐱 Build #4 — Docker + Tomcat</h3>

<div class="terminal">

<div class="terminal-body">

FROM maven:3.9-eclipse-temurin-21 AS build

<br><br>

WORKDIR /build

<br><br>

COPY pom.xml .

<br>

COPY src ./src

<br><br>

RUN mvn clean package

<br><br>


FROM tomcat:10-jdk21

<br><br>

RUN rm -rf /usr/local/tomcat/webapps/*

<br><br>

COPY --from=build \
/build/target/app.war \
/usr/local/tomcat/webapps/app.war

<br><br>

EXPOSE 8080

<br><br>

CMD ["catalina.sh","run"]

</div>

</div>

</div>


<br>


<div class="grid">

<div class="card">

<h3>Docker Commands</h3>

<pre>
docker build
docker images
docker ps
docker ps -a
docker run
docker stop
docker start
docker rm
docker rmi
docker logs
docker exec
docker inspect
docker stats
</pre>

</div>


<div class="card">

<h3>Experienced Engineer Questions</h3>

<ul>

<li>Why is my image huge?</li>
<li>Why is the container restarting?</li>
<li>Why does it work locally?</li>
<li>Why is port 8080 inaccessible?</li>
<li>Why is the container using too much memory?</li>
<li>Why should we avoid running as root?</li>
<li>How do I make builds reproducible?</li>

</ul>

</div>

</div>

</div>

</section>


<!-- =====================================================
     JENKINS
     ===================================================== -->

<section class="section" id="jenkins">

<div class="container">

<div class="section-title">

<small>MODULE 06</small>

<h2>⚙️ Jenkins CI/CD</h2>

</div>


<div class="pipeline">

<div class="pipe">👨‍💻<br>Developer</div>
<div class="arrow">→</div>
<div class="pipe">🌳<br>Git</div>
<div class="arrow">→</div>
<div class="pipe">⚙️<br>Jenkins</div>
<div class="arrow">→</div>
<div class="pipe">🏗️<br>Maven</div>
<div class="arrow">→</div>
<div class="pipe">🧪<br>Tests</div>
<div class="arrow">→</div>
<div class="pipe">🐳<br>Docker</div>
<div class="arrow">→</div>
<div class="pipe">☁️<br>Deploy</div>

</div>


<div class="card">

<h3>Production-style Jenkinsfile</h3>

<div class="terminal">

<div class="terminal-body">

pipeline {

<br>

&nbsp;&nbsp;agent any

<br><br>

&nbsp;&nbsp;stages {

<br><br>

&nbsp;&nbsp;&nbsp;&nbsp;stage('Checkout') {

<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;steps {
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;checkout scm
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>

&nbsp;&nbsp;&nbsp;&nbsp;}

<br><br>

&nbsp;&nbsp;&nbsp;&nbsp;stage('Build') {

<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;steps {
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sh 'mvn clean package'
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>

&nbsp;&nbsp;&nbsp;&nbsp;}

<br><br>

&nbsp;&nbsp;&nbsp;&nbsp;stage('Test') {

<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;steps {
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sh 'mvn test'
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>

&nbsp;&nbsp;&nbsp;&nbsp;}

<br><br>

&nbsp;&nbsp;&nbsp;&nbsp;stage('Docker Build') {

<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;steps {
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sh 'docker build -t myapp:${BUILD_NUMBER} .'
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>

&nbsp;&nbsp;&nbsp;&nbsp;}

<br><br>

&nbsp;&nbsp;&nbsp;&nbsp;stage('Deploy') {

<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;steps {
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sh 'docker compose up -d'
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>

&nbsp;&nbsp;&nbsp;&nbsp;}

<br><br>

&nbsp;&nbsp;}

<br>

}

</div>

</div>

</div>

</div>

</section>


<!-- =====================================================
     AWS
     ===================================================== -->

<section class="section" id="aws">

<div class="container">

<div class="section-title">

<small>MODULE 07</small>

<h2>☁️ AWS Architecture</h2>

</div>


<div class="architecture">

<div class="arch-node">
🌍 Internet
</div>

<div class="down">↓</div>

<div class="arch-node">
Route 53
</div>

<div class="down">↓</div>

<div class="arch-node">
🔀 Application Load Balancer
</div>

<div class="down">↓</div>

<div class="arch-node">
☁️ VPC
</div>

<div class="down">↓</div>

<div class="arch-node">
🖥️ EC2 / EKS
</div>

<div class="down">↓</div>

<div class="arch-node">
🐳 Application
</div>

<div class="down">↓</div>

<div class="arch-node">
🗄️ RDS
</div>

</div>


<div class="grid">

<div class="card">

<h3>Must Understand</h3>

<ul>

<li>VPC</li>
<li>Subnet</li>
<li>Route Table</li>
<li>Internet Gateway</li>
<li>NAT Gateway</li>
<li>Security Group</li>
<li>IAM</li>
<li>EC2</li>
<li>EBS</li>
<li>S3</li>
<li>RDS</li>
<li>ALB</li>
<li>Auto Scaling</li>
<li>CloudWatch</li>
<li>ECR</li>
<li>EKS</li>

</ul>

</div>

</div>

</div>

</section>


<!-- =====================================================
     TERRAFORM
     ===================================================== -->

<section class="section">

<div class="container">

<div class="section-title">

<small>MODULE 08</small>

<h2>🏗️ Terraform</h2>

<p>

Infrastructure should be repeatable, reviewable
and version-controlled.

</p>

</div>


<div class="terminal">

<div class="terminal-body">

resource "aws_instance" "devops" {

<br><br>

&nbsp;&nbsp;ami = "ami-example"

<br><br>

&nbsp;&nbsp;instance_type = "t3.micro"

<br><br>

&nbsp;&nbsp;tags = {

<br>

&nbsp;&nbsp;&nbsp;&nbsp;Name = "devops-server"

<br>

&nbsp;&nbsp;}

<br>

}

<br><br>

terraform init

<br>

terraform plan

<br>

terraform apply

<br>

terraform destroy

</div>

</div>

</div>

</section>


<!-- =====================================================
     KUBERNETES
     ===================================================== -->

<section class="section" id="k8s">

<div class="container">

<div class="section-title">

<small>MODULE 09</small>

<h2>☸️ Kubernetes</h2>

<p>

One container is simple.

Hundreds of containers require orchestration.

</p>

</div>


<div class="architecture">

<div class="arch-node">
☸️ Kubernetes Cluster
</div>

<div class="down">↓</div>

<div class="arch-node">
Control Plane
</div>

<div class="down">↓</div>

<div class="arch-node">
Worker Nodes
</div>

<div class="down">↓</div>

<div class="grid">

<div class="arch-node">🐳 Pod</div>
<div class="arch-node">🐳 Pod</div>
<div class="arch-node">🐳 Pod</div>

</div>

</div>


<div class="grid">

<div class="card">

<h3>Core Objects</h3>

<ul>

<li>Pod</li>
<li>Deployment</li>
<li>ReplicaSet</li>
<li>Service</li>
<li>Ingress</li>
<li>ConfigMap</li>
<li>Secret</li>
<li>Volume</li>
<li>Namespace</li>
<li>StatefulSet</li>
<li>DaemonSet</li>
<li>CronJob</li>

</ul>

</div>


<div class="card">

<h3>Production Debugging</h3>

<pre>
kubectl get pods

kubectl describe pod APP

kubectl logs APP

kubectl get events

kubectl get svc

kubectl get ingress

kubectl exec -it APP -- /bin/sh
</pre>

</div>

</div>

</div>

</section>


<!-- =====================================================
     SECURITY
     ===================================================== -->

<section class="section" id="security">

<div class="container">

<div class="section-title">

<small>MODULE 10</small>

<h2>🔐 DevSecOps</h2>

</div>


<div class="pipeline">

<div class="pipe">🌳<br>Source</div>
<div class="arrow">→</div>
<div class="pipe">🔍<br>SAST</div>
<div class="arrow">→</div>
<div class="pipe">📦<br>Dependency Scan</div>
<div class="arrow">→</div>
<div class="pipe">🔐<br>Secret Scan</div>
<div class="arrow">→</div>
<div class="pipe">🐳<br>Image Scan</div>
<div class="arrow">→</div>
<div class="pipe">🚀<br>Deploy</div>

</div>


<div class="grid">

<div class="card">

<h3>Security Principles</h3>

<ul>

<li>Least Privilege</li>
<li>IAM</li>
<li>RBAC</li>
<li>Secrets Management</li>
<li>TLS</li>
<li>Image Scanning</li>
<li>Dependency Scanning</li>
<li>Network Segmentation</li>

</ul>

</div>

</div>

</div>

</section>


<!-- =====================================================
     MONITORING
     ===================================================== -->

<section class="section" id="monitoring">

<div class="container">

<div class="section-title">

<small>MODULE 11</small>

<h2>📊 Monitoring & Observability</h2>

</div>


<div class="grid">

<div class="card">

<h3>CPU</h3>

<h2>72%</h2>

<div class="progress-wrap">
<div class="progress" style="width:72%"></div>
</div>

</div>


<div class="card">

<h3>Memory</h3>

<h2>51%</h2>

<div class="progress-wrap">
<div class="progress" style="width:51%"></div>
</div>

</div>


<div class="card">

<h3>Disk</h3>

<h2>81%</h2>

<div class="progress-wrap">
<div class="progress" style="width:81%"></div>
</div>

</div>


<div class="card">

<h3>Error Rate</h3>

<h2>0.8%</h2>

<div class="progress-wrap">
<div class="progress" style="width:8%"></div>
</div>

</div>

</div>


<br>


<div class="grid">

<div class="card">

<h3>Metrics</h3>

<p>
CPU, memory, latency, throughput,
request rate, error rate.
</p>

</div>

<div class="card">

<h3>Logs</h3>

<p>
Application logs, access logs,
system logs and audit logs.
</p>

</div>

<div class="card">

<h3>Traces</h3>

<p>
Follow one request across
multiple services.
</p>

</div>

<div class="card">

<h3>Alerts</h3>

<p>
Alert on meaningful symptoms,
not every tiny metric change.
</p>

</div>

</div>

</div>

</section>


<!-- =====================================================
     PRODUCTION INCIDENTS
     ===================================================== -->

<section class="section" id="incidents">

<div class="container">

<div class="section-title">

<small>MODULE 12</small>

<h2>🚨 Production Incident Simulator</h2>

<p>

This is where you stop thinking like someone who
only knows commands and start thinking like an
operations engineer.

</p>

</div>


<div class="card scenario">

<h3>🚨 INCIDENT #001</h3>

<p class="question">

Production is returning HTTP 502.

What do you do?

</p>


<div class="answer">

<strong>Step 1 — Don't restart immediately.</strong>

<br><br>

Check whether the application is alive.

<pre>
systemctl status tomcat

ps -ef | grep java

ss -lntp
</pre>

</div>


<div class="answer">

<strong>Step 2 — Check logs.</strong>

<pre>
tail -100 catalina.out

journalctl -u tomcat
</pre>

</div>


<div class="answer">

<strong>Step 3 — Test locally.</strong>

<pre>
curl -v http://localhost:8080/app
</pre>

</div>


<div class="answer">

<strong>Step 4 — Check the complete path.</strong>

<pre>
Browser
 ↓
DNS
 ↓
Load Balancer
 ↓
Reverse Proxy
 ↓
Tomcat
 ↓
Application
 ↓
Database
</pre>

</div>

</div>


<br>


<div class="card scenario">

<h3>🚨 INCIDENT #002</h3>

<p class="question">

Docker container keeps restarting.

</p>

<div class="answer">

Investigate:

<pre>
docker ps -a

docker logs APP

docker inspect APP

docker stats
</pre>

Possible causes:

<ul>

<li>Application crash</li>
<li>Wrong environment variable</li>
<li>Missing dependency</li>
<li>Incorrect command</li>
<li>Port configuration</li>
<li>Memory limit</li>
<li>Health check failure</li>

</ul>

</div>

</div>


<br>


<div class="card scenario">

<h3>🚨 INCIDENT #003</h3>

<p class="question">

Kubernetes Pod is CrashLoopBackOff.

</p>

<div class="answer">

Start with:

<pre>
kubectl get pod

kubectl describe pod APP

kubectl logs APP

kubectl logs APP --previous

kubectl get events
</pre>

Never assume Kubernetes itself is broken.

Find the failing layer.

</div>

</div>


<br>


<div class="card scenario">

<h3>🚨 INCIDENT #004</h3>

<p class="question">

Jenkins pipeline suddenly takes 25 minutes.

</p>

<div class="answer">

Investigate each stage:

<pre>
Checkout
Build
Dependencies
Tests
Static Analysis
Docker Build
Push
Deployment
Smoke Test
</pre>

Then optimize the actual bottleneck.

Potential improvements:

<ul>

<li>Dependency caching</li>
<li>Docker layer caching</li>
<li>Parallel tests</li>
<li>Smaller images</li>
<li>Reusable agents</li>
<li>Parallel pipeline stages</li>

</ul>

</div>

</div>

</div>

</section>


<!-- =====================================================
     COMPLETE BUILDS
     ===================================================== -->

<section class="section">

<div class="container">

<div class="section-title">

<small>REAL PROJECT BUILDS</small>

<h2>🔥 Build These Systems</h2>

</div>


<div class="grid">

<div class="card">

<div class="card-icon">1️⃣</div>

<h3>Java → Tomcat</h3>

<p>
Git → Maven → WAR → Tomcat → Browser
</p>

<span class="level">
FOUNDATION
</span>

</div>


<div class="card">

<div class="card-icon">2️⃣</div>

<h3>Java → Docker</h3>

<p>
Git → Maven → JAR → Docker → Container
</p>

<span class="level">
CONTAINERS
</span>

</div>


<div class="card">

<div class="card-icon">3️⃣</div>

<h3>Docker + Tomcat</h3>

<p>
Maven → WAR → Tomcat Image → Container
</p>

<span class="level">
ENTERPRISE
</span>

</div>


<div class="card">

<div class="card-icon">4️⃣</div>

<h3>Jenkins CI/CD</h3>

<p>
GitHub → Jenkins → Build → Test → Docker → Deploy
</p>

<span class="level">
AUTOMATION
</span>

</div>


<div class="card">

<div class="card-icon">5️⃣</div>

<h3>AWS Deployment</h3>

<p>
Jenkins → Docker → ECR → EC2 → Application
</p>

<span class="level">
CLOUD
</span>

</div>


<div class="card">

<div class="card-icon">6️⃣</div>

<h3>Kubernetes</h3>

<p>
Jenkins → Docker → Registry → Kubernetes → Service
</p>

<span class="level">
ADVANCED
</span>

</div>

</div>

</div>

</section>


<!-- =====================================================
     INTERVIEW MODE
     ===================================================== -->

<section class="section">

<div class="container">

<div class="section-title">

<small>INTERVIEW MODE</small>

<h2>🎯 Think Like a 5-Year Candidate</h2>

</div>


<div class="grid">


<div class="card">

<h3>🟢 Beginner</h3>

<p class="question">
What is Docker?
</p>

<div class="answer">

Docker packages applications and their dependencies
into portable containers.

</div>

</div>


<div class="card">

<h3>🟡 Intermediate</h3>

<p class="question">
Image vs Container?
</p>

<div class="answer">

An image is an immutable package/template.

A container is a running instance of an image.

</div>

</div>


<div class="card">

<h3>🔴 Advanced</h3>

<p class="question">

Your Docker image is 1.5GB.

How would you reduce it?

</p>

<div class="answer">

Think:

Multi-stage builds.

Smaller base image.

Remove unnecessary packages.

Use `.dockerignore`.

Reduce layers.

Do not ship build tools into runtime.

</div>

</div>


<div class="card">

<h3>🔥 Production</h3>

<p class="question">

Your deployment succeeded but users
still receive errors. What do you check?

</p>

<div class="answer">

Deployment success does not equal application health.

Check:

Load balancer.

Application health.

Logs.

Metrics.

Dependencies.

Database.

Network.

Recent configuration changes.

</div>

</div>


</div>

</div>

</section>


<!-- =====================================================
     SENIOR MINDSET
     ===================================================== -->

<section class="section">

<div class="container">

<div class="section-title">

<small>ENGINEERING MINDSET</small>

<h2>🧠 Junior vs Experienced</h2>

</div>


<div class="grid">

<div class="card">

<h3>❌ Junior</h3>

<p>
"Server is slow."
</p>

</div>


<div class="card">

<h3>🔥 Experienced</h3>

<p>
CPU?

Memory?

Disk I/O?

Network?

JVM GC?

Threads?

Database?

External dependency?

Traffic spike?

Recent deployment?
</p>

</div>


<div class="card">

<h3>❌ Junior</h3>

<p>
"Jenkins failed."
</p>

</div>


<div class="card">

<h3>🔥 Experienced</h3>

<p>
Which stage?

What changed?

Is the failure reproducible?

Code?

Dependency?

Credential?

Agent?

Infrastructure?

Environment?
</p>

</div>

</div>

</div>

</section>


<!-- =====================================================
     FINAL ARCHITECTURE
     ===================================================== -->

<section class="section">

<div class="container">

<div class="section-title">

<small>FINAL PROJECT</small>

<h2>🏆 Production-Style DevOps Architecture</h2>

</div>


<div class="architecture">

<div class="arch-node">
🌍 USERS
</div>

<div class="down">↓</div>

<div class="arch-node">
Route 53
</div>

<div class="down">↓</div>

<div class="arch-node">
🔀 Application Load Balancer
</div>

<div class="down">↓</div>

<div class="arch-node">
☸️ Kubernetes / EKS
</div>

<div class="down">↓</div>

<div class="arch-node">
🐳 Application Pods
</div>

<div class="down">↓</div>

<div class="arch-node">
🗄️ RDS
</div>

<br>

<div class="arch-node">

CI/CD

<br><br>

GitHub
→ Jenkins
→ Maven
→ Tests
→ SonarQube
→ Trivy
→ Docker
→ ECR
→ EKS

</div>

<br>

<div class="arch-node">

OBSERVABILITY

<br><br>

Prometheus
→ Grafana
→ Alerts

</div>

</div>

</div>

</section>


<!-- =====================================================
     FINAL CHECKLIST
     ===================================================== -->

<section class="section">

<div class="container">

<div class="section-title">

<small>JOB READY CHECKLIST</small>

<h2>🏆 Can You Explain These?</h2>

</div>


<div class="grid">

<div class="card">

<h3>🐧 Linux</h3>

<p>☑ Processes</p>
<p>☑ Services</p>
<p>☑ Permissions</p>
<p>☑ Logs</p>
<p>☑ Disk / Memory</p>

</div>


<div class="card">

<h3>🐳 Docker</h3>

<p>☑ Images</p>
<p>☑ Containers</p>
<p>☑ Networks</p>
<p>☑ Volumes</p>
<p>☑ Multi-stage builds</p>

</div>


<div class="card">

<h3>⚙️ Jenkins</h3>

<p>☑ Pipeline</p>
<p>☑ Webhook</p>
<p>☑ Agents</p>
<p>☑ Credentials</p>
<p>☑ Deployment</p>

</div>


<div class="card">

<h3>☁️ AWS</h3>

<p>☑ VPC</p>
<p>☑ EC2</p>
<p>☑ IAM</p>
<p>☑ ALB</p>
<p>☑ RDS</p>

</div>


<div class="card">

<h3>☸️ Kubernetes</h3>

<p>☑ Pods</p>
<p>☑ Deployments</p>
<p>☑ Services</p>
<p>☑ Ingress</p>
<p>☑ Troubleshooting</p>

</div>


<div class="card">

<h3>🚨 Production</h3>

<p>☑ Incident response</p>
<p>☑ Root cause analysis</p>
<p>☑ Monitoring</p>
<p>☑ Rollback</p>
<p>☑ Prevention</p>

</div>

</div>

</div>

</section>


<!-- =====================================================
     FOOTER
     ===================================================== -->

<footer>

<div class="container">

<h2>🚀 DEVOPS ENGINEER OS</h2>

<p>

Learn the technology.

Understand the architecture.

Build it.

Break it.

Debug it.

Automate it.

Monitor it.

Then explain it like an engineer.

</p>

<p>

Single JSP • Embedded UI • Embedded JavaScript •
Embedded SVG • DevOps Learning System

</p>

</div>

</footer>


<!-- =====================================================
     JAVASCRIPT — STILL INSIDE THE SAME JSP
     ===================================================== -->

<script>

/* =========================================================
   SIMPLE INTERACTION ENGINE
   ========================================================= */

console.log(
    "🚀 DEVOPS ENGINEER OS INITIALIZED"
);


/*
    Reveal cards when they enter viewport.
*/

const cards =
document.querySelectorAll(".card");


const observer =
new IntersectionObserver(
    entries => {

        entries.forEach(
            entry => {

                if(entry.isIntersecting) {

                    entry.target.style.opacity = "1";
                    entry.target.style.transform =
                        "translateY(0)";

                }

            }
        );

    },
    {
        threshold: .1
    }
);


cards.forEach(card => {

    card.style.opacity = "0";
    card.style.transform = "translateY(20px)";
    card.style.transition = "all .6s ease";

    observer.observe(card);

});


/*
    Keyboard shortcut:
    Press "/" to jump to top.
*/

document.addEventListener(
    "keydown",
    function(event) {

        if(event.key === "/") {

            window.scrollTo({
                top: 0,
                behavior: "smooth"
            });

        }

    }
);


/*
    Simple DevOps terminal Easter egg.
*/

console.log(
`
╔══════════════════════════════════════╗
║       DEVOPS ENGINEER OS 🚀         ║
╠══════════════════════════════════════╣
║ Linux → Git → Docker → Jenkins      ║
║ AWS → Terraform → Kubernetes        ║
║ Monitoring → Security → Production  ║
╚══════════════════════════════════════╝
`
);

</script>


</body>
</html>
