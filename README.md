# 🗳️ Election Process Guide

> An interactive civic education web app helping citizens understand the complete election process — from voter registration to final certification.

🌐 **Live App:** [election-assistant-801744374074.asia-south1.run.app](https://election-assistant-801744374074.asia-south1.run.app/)

![HTML](https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=html5&logoColor=white)
![CSS](https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![Google Cloud](https://img.shields.io/badge/Google_Cloud-4285F4?style=flat&logo=google-cloud&logoColor=white)

---

## ✨ Features

| Feature | Description |
|---|---|
| 📅 **Election Timeline** | Step-by-step phases with expandable detail cards and status indicators |
| ❓ **FAQ Section** | Common voter questions answered with smooth accordion UI |
| 📖 **Glossary** | Searchable election terminology with plain-language definitions |
| 🧠 **Interactive Quiz** | 7-question quiz with instant feedback and score results |
| ✅ **Voter Checklist** | Before / during / after election day preparation steps |
| 📱 **Responsive Design** | Fully optimized for desktop and mobile screens |
| ♿ **Accessible** | Keyboard navigable, ARIA labels, focus-visible states |

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Frontend | Vanilla HTML, CSS, JavaScript (single file) |
| Fonts | Google Fonts — Playfair Display, DM Sans |
| Server | Nginx 1.27 (Alpine) |
| Container | Docker |
| Hosting | Google Cloud Run (asia-south1 / Mumbai) |

---

## 📁 Project Structure

```
election-process-system/
├── election-assistant.html   # Main single-page application
├── Dockerfile                # Docker image using nginx:alpine
├── nginx.conf.template       # Nginx config with Cloud Run PORT support
├── .dockerignore             # Files excluded from Docker build
└── README.md                 # This file
```

---

## 🚀 Deployment

This project is containerized with Docker and deployed on **Google Cloud Run**.

### Project Details

| Field | Value |
|---|---|
| GCP Project ID | `election-assistant-494118` |
| Region | `asia-south1` (Mumbai) |
| Service Name | `election-assistant` |

### Deploy from Cloud Shell

```bash
# Clone the repo
git clone https://github.com/Rit7439/Election-assistant.git
cd Election-assistant

# Deploy to Cloud Run
gcloud run deploy election-assistant \
  --source . \
  --project election-assistant-494118 \
  --region asia-south1 \
  --allow-unauthenticated
```

### Run Locally with Docker

```bash
docker build -t election-assistant .
docker run -p 8080:8080 -e PORT=8080 election-assistant
```

Then open [http://localhost:8080](http://localhost:8080)

---

## 🔧 Run Locally (No Docker)

Simply open the HTML file directly in your browser:

```
election-assistant.html → Open with any modern browser
```

No build step, no dependencies, no server required.

---

## 📤 Push to GitHub

```bash
git init
git add .
git commit -m "Initial commit: Election Process System"
git branch -M main
git remote add origin https://github.com/Rit7439/Election-assistant.git
git push -u origin main
```

---

## 👤 Author

Made with ❤️ — deployed on Google Cloud Run.

---

## 📄 License

This project is open source and available for educational use.
