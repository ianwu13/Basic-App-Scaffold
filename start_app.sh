#!/bin/bash

# Environment name
env_name="science"

# Session name
session_name="basic_app"
api_wind_name="fastapi"
fe_wind_name="frontend"
# utility_term_name="service_term"

# Check if sessions already exist
if tmux has-session -t "$session_name" 2>/dev/null; then
  echo "Session '$session_name' already exists. Please choose a different name or kill the existing session."
  exit 1
fi

# Create new detached session
tmux new-session -d -s "$session_name"

# Create new process windows
# tmux new-window -d -n "$utility_term_name"
tmux new-window -d -n "$fe_wind_name"
tmux new-window -d -n "$api_wind_name"

# Split the frontend window into two panes vertically
tmux split-window -h -t "$session_name":"$fe_wind_name"

# Initialize Fast API (window 2, pane 0)
tmux send -t "$session_name":"$api_wind_name" "echo 'FASTAPI PANE'" C-m
tmux send -t "$session_name":"$api_wind_name" "conda activate $env_name" C-m
tmux send -t "$session_name":"$api_wind_name" "cd sales_navigator" C-m
tmux send -t "$session_name":"$api_wind_name" "ENVIRONMENT=development uvicorn main:app --reload" C-m

# Initialize React/Tailwind Processes
# Top pane of frontend window (window 1, pane 0)
tmux send -t "$session_name":"$fe_wind_name".0 "echo 'REACT PANE'" C-m
tmux send -t "$session_name":"$fe_wind_name".0 "cd frontend" C-m
tmux send -t "$session_name":"$fe_wind_name".0 "npm start" C-m

# Bottom pane of frontend window (window 1, pane 1)
tmux send -t "$session_name":"$fe_wind_name".1 "echo 'TAILWIND PANE'" C-m
tmux send -t "$session_name":"$fe_wind_name".1 "cd frontend" C-m
tmux send -t "$session_name":"$fe_wind_name".1 "npx tailwindcss -i ./src/css/index_template.css -o ./src/css/index.css --watch" C-m

# Initialize Utility Terminal (window 0)
# tmux send -t "$session_name":"$utility_term_name" "echo 'Utility Terminal to Run commands while app is running'" C-m

# Attach to the session
tmux attach -t "$session_name"