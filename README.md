# Auralix.ai

**Where Meetings Turn into Momentum**

📹 **[Watch Demo Video](https://youtu.be/b38ItkhMtxQ)**

Auralix.ai is an AI-powered async agent that captures meetings, transcribes them in real-time, summarizes team discussions, and auto-syncs tasks to Notion, Slack, and GitHub. It also pulls team activity from GitHub and Notion, summarizes each member's progress using Gemini, and sends clean Slack updates, automates everything — giving async visibility without the overhead of manual standups.

---

## 🚀 Features

- **🎙️ Dual Audio Recording**: Chrome extension captures tab + microphone audio + upload file (alternating web app)
- **🤖 AI Processing**: Whisper transcription + Gemini analysis summary
- **📤 Slack Integration**: Instant summaries and daily progress reports
- **📋 Notion Sync**: Automatic task creation and management
- **🐙 GitHub Monitoring**: Auto-update tasks based on commits
- **📊 Progress Tracking**: Daily standup automation

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           INPUT SOURCES                                     │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │   Chrome Extension  |  Web App  |  Mic or File Upload              │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                        AI PROCESSING ENGINE                                 │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │   Whisper API (Speech to Text)  →  Gemini AI (Analysis summary)    │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                           SLACK INTEGRATION                                 │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │   Instant Summary Posting  |  Formatted Reports                     │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                        TASK MANAGEMENT (NOTION)                            │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │   Task Creation  |  Smart Assignment  |  Status Tracking           │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                        GITHUB MONITORING                                    │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │   Commit Tracking  →  Task Matching  →  Auto Status Updates        │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                        PROGRESS AGGREGATION                                │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │   Daily Reports (GitHub + Notion)  →  Team Progress  →  Slack      │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 🛠️ Quick Start

### 1. **Setup**
```bash
git clone <repo-url>
pip install -r requirements.txt
```
### 2. Create a notion parent page that is connected to the notion token

### 3. **Configure**
Create `.env` file with your API keys:

```env
NOTION_TOKEN=your_notion_integration_token
PARENT_PAGE_ID=your_notion_parent_page_id
TOKEN_GITHUB=your_github_personal_access_token
REPO_OWNER=your_github_username_or_org
REPO_NAME=your_repository_name
SLACK_WEBHOOK_URL=your_slack_webhook_url
GEMINI_API_KEY=your_gemini_api_key (optional)
```


### 4. **Run**
```bash
python backend/dailysync/flask_app.py
```

### 5. **Install Extension**
1. Go to `chrome://extensions/`
2. Enable Developer Mode
3. Load unpacked → Select `/extension` folder
4. Allow microphone permissions

### or 5. **Use our alternative webapp**
- start the webapp/index.html in local browser
---

## 🔄 Workflow

1. **Record** → Chrome extension captures meeting audio
2. **Process** → Whisper transcribes, Gemini analyzes
3. **Share** → Summary posted to Slack
4. **Create** → Tasks auto-created in Notion
5. **Track** → GitHub commits update task status
6. **Report** → Daily progress sent to Slack

---

## 📁 Structure

```
meeting/
├── backend/
│   ├── dailysync/        # Flask app, integrations
│   └── whisper_api/      # Whisper transcription service
├── extension/             # Chrome extension
├── web_app/              # Web interface
└── requirements.txt      # Dependencies
```

---

## 🔗 Integrations

- **📝 Notion**: Task database with auto-assignment
- **💬 Slack**: Instant summaries + daily reports
- **🐙 GitHub**: Commit monitoring + auto-updates
- **🤖 AI**: Whisper transcription + Gemini analysis

---

## 🐛 Support

- **Issues**: Create GitHub issue
- **Docs**: Check inline comments
- **Debug**: Set `DEBUG=1` environment variable

---

**Built with ❤️ for efficient team collaboration**
