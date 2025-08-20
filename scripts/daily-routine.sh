#!/bin/bash

# Multi-Platform Portfolio Daily Routine
# Usage: ./daily-routine.sh "Your commit message"

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get today's date
TODAY=$(date +%Y-%m-%d)
COMMIT_MSG="${1:-Daily portfolio update - $TODAY}"

echo -e "${BLUE}🚀 Starting daily portfolio routine...${NC}"
echo -e "${YELLOW}Date: $TODAY${NC}"
echo -e "${YELLOW}Message: $COMMIT_MSG${NC}"

# Create today's work folder
DAILY_FOLDER="../content/daily-posts/$TODAY"
mkdir -p "$DAILY_FOLDER"

echo -e "${GREEN}✅ Created daily folder: $DAILY_FOLDER${NC}"

# Git operations
echo -e "${BLUE}📝 Committing to local repository...${NC}"
cd ..
git add .
git commit -m "$COMMIT_MSG" || echo "No changes to commit"

# Check if we have GitHub remote
if git remote get-url origin >/dev/null 2>&1; then
    echo -e "${BLUE}⬆️ Pushing to GitHub...${NC}"
    git push origin main
else
    echo -e "${YELLOW}⚠️ No GitHub remote found. Set up with: gh repo create${NC}"
fi

echo -e "${GREEN}🎉 Daily routine completed!${NC}"
echo -e "${BLUE}Next steps:${NC}"
echo "1. Add your daily work to: $DAILY_FOLDER"
echo "2. Run specific platform updates:"
echo "   - ./github-update.sh"
echo "   - ./kaggle-upload.sh"
echo "   - ./datacamp-sync.sh"
