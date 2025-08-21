#!/bin/bash

# Enhanced Multi-Platform Portfolio Daily Routine
# Usage: ./daily-routine-enhanced.sh "Your commit message"

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Get today's date
TODAY=$(date +%Y-%m-%d)
COMMIT_MSG="${1:-Daily portfolio update - $TODAY}"

echo -e "${BLUE}🚀 Starting enhanced daily portfolio routine...${NC}"
echo -e "${BLUE}🐍 Using active Python environment...${NC}"

# Create today's work structure
DAILY_FOLDER="content/daily-posts/$TODAY"
mkdir -p "$DAILY_FOLDER"
mkdir -p "$DAILY_FOLDER/notebooks"
mkdir -p "$DAILY_FOLDER/data"
mkdir -p "$DAILY_FOLDER/analysis"

# Copy notebook template with today's date
cp content/templates/daily-analysis-template.ipynb "$DAILY_FOLDER/notebooks/analysis-$TODAY.ipynb"
sed -i "s/{DATE}/$TODAY/g" "$DAILY_FOLDER/notebooks/analysis-$TODAY.ipynb"

# Create daily template files
cat > "$DAILY_FOLDER/README.md" << EOL
# Daily Work - $TODAY

## Objective
Brief description of today's focus

## Analysis
- Key findings
- Business insights
- Technical achievements

## Files
- \`notebooks/analysis-$TODAY.ipynb\` - Main analysis notebook
- \`data/\` - Sample datasets
- \`analysis/\` - Reports and visualizations

## Next Steps
- [ ] Task 1
- [ ] Task 2
EOL

echo -e "${GREEN}✅ Created enhanced daily structure: $DAILY_FOLDER${NC}"
echo -e "${GREEN}📓 Created notebook: $DAILY_FOLDER/notebooks/analysis-$TODAY.ipynb${NC}"

# Git operations
echo -e "${BLUE}📝 Committing to repository...${NC}"
git add .
git commit -m "$COMMIT_MSG" || echo "No changes to commit"

# Push to GitHub
echo -e "${BLUE}⬆️ Pushing to GitHub...${NC}"
git push origin main

echo -e "${GREEN}🎉 Enhanced daily routine completed!${NC}"
echo -e "${BLUE}Ready to start analysis:${NC}"
echo "1. Open notebook: jupyter notebook $DAILY_FOLDER/notebooks/analysis-$TODAY.ipynb"
echo "2. Start your daily data analysis"
echo "3. Export results for Kaggle/DataCamp sharing"
