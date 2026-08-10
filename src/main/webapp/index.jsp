<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>

<title>DevOpsVerse 🚀</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #080b16;
        color: white;
    }

    .hero {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
    }

    .hero h1 {
        font-size: 70px;
        margin: 10px;
    }

    .gradient {
        background: linear-gradient(90deg,#00e5ff,#7c4dff,#ff4081);
        -webkit-background-clip: text;
        color: transparent;
    }

    .subtitle {
        font-size: 22px;
        color: #aaa;
    }

    .card {
        background: #111827;
        border: 1px solid #263244;
        border-radius: 25px;
        padding: 30px;
        margin: 20px;
        transition: .3s;
    }

    .card:hover {
        transform: translateY(-10px) scale(1.02);
        box-shadow: 0 20px 50px rgba(0,0,0,.5);
    }

    .roadmap {
        max-width: 1200px;
        margin: auto;
        padding: 50px 20px;
    }

    .terminal {
        background: #050505;
        border-radius: 15px;
        padding: 20px;
        font-family: monospace;
        color: #00ff88;
        text-align: left;
    }

    .command {
        color: white;
    }

    .emoji {
        font-size: 70px;
    }
</style>

</head>

<body>

<section class="hero">

<div>

    <!-- Inline cartoon -->
    <svg width="250" height="250" viewBox="0 0 250 250">

        <circle cx="125" cy="125" r="110"
                fill="#172033"
                stroke="#00e5ff"
                stroke-width="5"/>

        <!-- Head -->
        <circle cx="125" cy="105" r="45"
                fill="#ffd6a5"/>

        <!-- Hair -->
        <path d="M82 95 Q125 35 168 95"
              fill="#222"/>

        <!-- Eyes -->
        <circle cx="108" cy="105" r="5"/>
        <circle cx="142" cy="105" r="5"/>

        <!-- Smile -->
        <path d="M105 125 Q125 145 145 125"
              fill="none"
              stroke="#222"
              stroke-width="5"/>

        <!-- Laptop -->
        <rect x="75" y="160"
              width="100"
              height="55"
              rx="5"
              fill="#222"/>

        <text x="125" y="195"
              text-anchor="middle"
              fill="#00ff88"
              font-size="16">
            DevOps
        </text>

    </svg>

    <h1>
        Welcome to
        <span class="gradient">DEVOPSVERSE</span>
    </h1>

    <p class="subtitle">
        From "What is Linux?" 🤔
        to "I deployed Kubernetes!" 🚀
    </p>

</div>

</section>


<section class="roadmap">

<h1>🗺️ Your DevOps Journey</h1>

<div class="card">
    <div class="emoji">🐧</div>

    <h2>LEVEL 1 — Linux</h2>

    <p>
        Imagine Linux as your DevOps house.
        Before learning DevOps, learn how to
        walk around inside the house.
    </p>

    <div class="terminal">

        $ whoami<br>
        <span class="command">
        devops_learner
        </span>

        <br><br>

        $ pwd<br>
        /home/devops

        <br><br>

        $ ls<br>
        projects  logs  scripts  docker

    </div>

</div>


<div class="card">

    <div class="emoji">🌳</div>

    <h2>LEVEL 2 — Git & GitHub</h2>

    <p>
        Think of Git as a time machine for your code.
    </p>

    <pre>
Developer
   |
   | git add
   ↓
Staging
   |
   | git commit
   ↓
Local Repository
   |
   | git push
   ↓
☁️ GitHub
    </pre>

</div>


<div class="card">

    <div class="emoji">🐳</div>

    <h2>LEVEL 3 — Docker</h2>

    <p>
        Your application says:
        "It works on my machine!" 😂
    </p>

    <p>
        Docker says:
        "Fine. I'll package the entire machine."
    </p>

    <pre>
┌─────────────────────────────┐
│ 🐳 Docker Container         │
│                             │
│   Application               │
│   Runtime                   │
│   Dependencies             │
│   Configuration             │
│                             │
└─────────────────────────────┘
    </pre>

</div>


<div class="card">

    <div class="emoji">⚙️</div>

    <h2>LEVEL 4 — Jenkins CI/CD</h2>

    <p>
        You push code...
    </p>

    <pre>
👨‍💻 Developer
      ↓
   Git Push
      ↓
🌳 GitHub
      ↓
⚙️ Jenkins
      ↓
🧪 Build
      ↓
🔍 Test
      ↓
🐳 Docker Build
      ↓
🚀 Deploy
    </pre>

</div>


<div class="card">

    <div class="emoji">☁️</div>

    <h2>LEVEL 5 — AWS</h2>

    <p>
        Now your application leaves your laptop
        and enters the cloud.
    </p>

    <pre>
                 ☁️ AWS
                   |
        ┌──────────┼──────────┐
        ↓          ↓          ↓
      EC2        S3         RDS
       🖥️         📦         🗄️
        |
      Docker
        |
      App 🚀
    </pre>

</div>


<div class="card">

    <div class="emoji">☸️</div>

    <h2>LEVEL 6 — Kubernetes</h2>

    <p>
        One container is easy.
        500 containers?
        Kubernetes enters the chat. 😎
    </p>

    <pre>
                 ☸️
            Kubernetes
                 |
       ┌─────────┼─────────┐
       ↓         ↓         ↓
    🐳 Pod    🐳 Pod    🐳 Pod
       ↓         ↓         ↓
     App       App       App
    </pre>

</div>


<div class="card">

    <div class="emoji">🏗️</div>

    <h2>LEVEL 7 — Terraform</h2>

    <p>
        Stop manually clicking AWS buttons.
        Tell infrastructure what you want.
    </p>

    <div class="terminal">

        resource "aws_instance" "devops" {<br>
        &nbsp;&nbsp;instance_type = "t3.micro"<br>
        &nbsp;&nbsp;ami = "amazon-linux"<br>
        }

    </div>

</div>


<div class="card">

    <div class="emoji">📊</div>

    <h2>LEVEL 8 — Monitoring</h2>

    <p>
        Production is running...
        but is it actually healthy? 👀
    </p>

    <pre>
CPU       ███████░░░ 72%
Memory    █████░░░░░ 51%
Disk      ████████░░ 81%
Requests  █████████░ 94%

        🟢 SYSTEM HEALTHY
    </pre>

</div>


<div class="card">

    <div class="emoji">🚀</div>

    <h2>FINAL LEVEL</h2>

    <h1 class="gradient">
        DEVOPS ENGINEER
    </h1>

    <p>
        Linux → Git → Docker → Jenkins →
        AWS → Kubernetes → Terraform →
        Monitoring → DevSecOps
    </p>

</div>

</section>

</body>
</html>
