index.html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Vikaseasy</title>

<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;600;800&display=swap" rel="stylesheet">

<style>
*{margin:0;padding:0;box-sizing:border-box;font-family:'Montserrat',sans-serif;}
body{background:#000;color:#fff;overflow-x:hidden;}

/* Background */
.bg{
position:fixed;
width:100%;height:100%;
background:url('yourphoto.jpg') center/cover no-repeat;
filter:brightness(0.3) blur(3px);
z-index:-1;
}

/* Hero */
.hero{
min-height:100vh;
display:flex;
flex-direction:column;
justify-content:center;
align-items:center;
text-align:center;
padding:20px;
}

h1{
font-size:50px;
letter-spacing:3px;
font-weight:800;
}

/* Typing Bio */
.bio{
margin-top:30px;
max-width:700px;
font-size:15px;
line-height:1.6;
background:rgba(255,255,255,0.05);
padding:20px;
border-radius:14px;
border:1px solid rgba(255,255,255,0.15);
}

.cursor{
display:inline-block;
width:8px;
background:white;
animation:blink 1s infinite;
}
@keyframes blink{50%{opacity:0;}}

/* Buttons */
.links{margin-top:30px;}
.btn{
display:block;
width:280px;
margin:12px auto;
padding:14px;
border-radius:12px;
text-decoration:none;
color:white;
background:rgba(255,255,255,0.05);
border:1px solid rgba(255,255,255,0.2);
transition:0.3s;
}
.btn:hover{
background:white;color:black;
transform:scale(1.08);
}

/* Floating Menu */
.floating{position:fixed;right:20px;bottom:20px;}
.main-btn{
width:65px;height:65px;border-radius:50%;
background:rgba(255,255,255,0.1);
display:flex;align-items:center;justify-content:center;
font-size:26px;color:white;cursor:pointer;
border:1px solid rgba(255,255,255,0.2);
}
.menu{
position:absolute;bottom:80px;right:0;
display:flex;flex-direction:column;gap:10px;
opacity:0;pointer-events:none;transition:0.3s;
}
.menu.active{opacity:1;pointer-events:auto;}
.menu a{
width:55px;height:55px;border-radius:50%;
display:flex;align-items:center;justify-content:center;
background:rgba(255,255,255,0.08);
color:white;text-decoration:none;
}
.menu a:hover{background:white;color:black;}

/* Footer */
.footer{text-align:center;padding:20px;color:#666;}
</style>
</head>

<body>

<div class="bg"></div>

<div class="hero">
<h1>VIKASEASY</h1>

<div class="bio">
<span id="typing"></span><span class="cursor"></span>
</div>

<div class="links">
<a class="btn" href="https://www.instagram.com/vikas.banotra" target="_blank">📸 Instagram</a>
<a class="btn" href="https://wa.me/qr/YHQLXV6MC775C1" target="_blank">💬 WhatsApp</a>
<a class="btn" href="https://t.me/Vikasbanotra70" target="_blank">✈️ Telegram</a>
</div>
</div>

<div class="footer">© 2026 Vikaseasy</div>

<!-- Floating -->
<div class="floating">
<div class="menu" id="menu">
<a href="https://wa.me/qr/YHQLXV6MC775C1">💬</a>
<a href="https://t.me/Vikasbanotra70">✈️</a>
</div>
<div class="main-btn" onclick="toggleMenu()">☰</div>
</div>

<script>
const text = `🚀 We craft 📱 apps, 🛒 stores, 🤖 bots, ⛓️ blockchains, 🧠 AI brains, ☁️ cloud empires—pretty much anything you can imagine.

💡 And yes, we break into our own builds first 🔨… so you don't have to worry about hackers doing it later. 🛡️`;
🛡️

🔐 Security isn't a feature—it's our promise. ✨ We don't just protect your systems, we guarantee them with full coverage. 💯

SCROLL
02 / What We Offer
OUR EXPERTISE
From concept to deployment, we build secure, scalable solutions that power your business forward.

🌐
01
WEB APPLICATIONS
Full-stack web apps built with modern frameworks, optimized for performance and security.

React
Vue
Node.js
Next.js
→
⛓️
02
BLOCKCHAIN DEVELOPMENT
Smart contracts, DeFi platforms, and blockchain infrastructure built on multiple chains.

Solidity
Web3
Ethereum
Polygon
→
🤖
03
AI DEVELOPMENT
Machine learning models, AI agents, and intelligent automation systems that scale.

Python
TensorFlow
OpenAI
PyTorch
→
→
📊
04
DASHBOARDS & SERVICES
Real-time analytics dashboards and cloud services that give you complete control.

React
D3.js
AWS
Docker
→
⚙️
05
AUTOMATION SYSTEMS
Self-hosted intelligent systems that work independently, getting your work done without human interaction.

Python
Node.js
Docker
Linux
→
⚡
06
CODE OPTIMIZATION
Reduce server bills by up to 80% with expert code optimization. Better performance, lower costs.

Performance
Profiling
Scaling
Refactoring
→
🔐
07
PENETRATION TESTING
We find and patch vulnerabilities before they go live. Problems solved before they happen.

Security
OWASP
Testing
Auditing
→
💰
08
DIGITAL WEALTH MANAGEMENT
Automated trading systems for stocks, crypto, and markets. Analyze thousands of metrics in split seconds.

Python
Trading APIs
ML
Real-time
→
let i=0;
function typing(){
if(i<text.length){
document.getElementById("typing").innerHTML+=text.charAt(i);
i++;
setTimeout(typing,20);
}}
typing();

function toggleMenu(){
document.getElementById("menu").classList.toggle("active");
}
</script>

</body>
</html>
