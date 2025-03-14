#!/bin/bash

# Get quote
QUOTE_DATA=$(curl -s https://api.quotable.io/random)
QUOTE_CONTENT=$(echo "$QUOTE_DATA" | jq -r '.content')
QUOTE_AUTHOR=$(echo "$QUOTE_DATA" | jq -r '.author')
DATE=$(date)

# Update log file
echo "Last updated: $DATE" > update_log.txt
echo "System info: $(uname -a)" >> update_log.txt
echo "Quote: $QUOTE_CONTENT - $QUOTE_AUTHOR" >> update_log.txt

# Create the new README content
echo "# Daily Auto Commit" > README.md
echo "This repository demonstrates my ability to automate GitHub workflows using GitHub Actions." >> README.md
echo "## What it does" >> README.md
echo "- Runs automatically every day at 12:00 UTC" >> README.md
echo "- Updates a log file with the current date and system information" >> README.md
echo "- Fetches a random quote from an API" >> README.md
echo "- **Updates this README with the quote of the day**" >> README.md
echo "- Commits and pushes these changes automatically" >> README.md
echo "## Why I built this" >> README.md
echo "This project showcases my technical abilities with:" >> README.md
echo "- GitHub Actions and CI/CD workflows" >> README.md
echo "- Automation scripts" >> README.md
echo "- Git operations from within workflows" >> README.md
echo "- Working with external APIs" >> README.md
echo "- Dynamic content generation" >> README.md
echo "- *Most importantly, it shows how green boxes really dont mean much in terms of skills.*" >> README.md
echo "## How it works" >> README.md
echo "The GitHub Action workflow:" >> README.md
echo "1. Runs on a schedule (daily)" >> README.md
echo "2. Fetches a random inspirational quote" >> README.md
echo "3. Updates both a log file and this README" >> README.md
echo "4. Commits and pushes the changes" >> README.md
echo "Status: ![Daily Auto Commit](https://github.com/AlexCSalinas/daily-auto-commit/actions/workflows/daily-commit.yml/badge.svg)" >> README.md
echo "## Today's Quote" >> README.md
echo "" >> README.md
echo "> $QUOTE_CONTENT" >> README.md
echo ">" >> README.md
echo "> — *$QUOTE_AUTHOR*" >> README.md
echo "" >> README.md
echo "Last updated: $DATE" >> README.md
