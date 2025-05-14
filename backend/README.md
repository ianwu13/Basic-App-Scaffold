# FastAPI Web Application

This is a simple FastAPI application with a frontend interface.

## Project Structure

```
.
├── main.py              # FastAPI application
├── requirements.txt     # Python dependencies
├── static/             # Static files (CSS, JS, images)
└── templates/          # HTML templates
    └── index.html      # Main page template
```

## Setup

1. Create a virtual environment (recommended):
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

## Running the Application

Start the server:
```bash
python main.py
```

The application will be available at:
- Frontend: http://localhost:8000
- API Documentation: http://localhost:8000/docs

## Features

- FastAPI backend with a simple API endpoint
- Modern HTML frontend with JavaScript
- Automatic API documentation
- Hot reloading during development 