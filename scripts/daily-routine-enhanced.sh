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

echo -e "${BLUE}Ì∫Ä Starting enhanced daily portfolio routine...${NC}"
echo -e "${BLUE}Ì∞ç Using active Python environment...${NC}"

# Create today's work structure
DAILY_FOLDER="content/daily-posts/$TODAY"
mkdir -p "$DAILY_FOLDER"
mkdir -p "$DAILY_FOLDER/notebooks"
mkdir -p "$DAILY_FOLDER/data"
mkdir -p "$DAILY_FOLDER/analysis"

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
- \`notebooks/\` - Jupyter notebooks
- \`data/\` - Sample datasets
- \`analysis/\` - Reports and visualizations

## Next Steps
- [ ] Task 1
- [ ] Task 2
EOL

echo -e "${GREEN}‚úÖ Created enhanced daily structure: $DAILY_FOLDER${NC}"

# Git operations
echo -e "${BLUE}Ì≥ù Committing to repository...${NC}"
git add .
git commit -m "$COMMIT_MSG" || echo "No changes to commit"

# Check GitHub remote
if git remote get-url origin >/dev/null 2>&1; then
    echo -e "${BLUE}‚¨ÜÔ∏è Pushing to GitHub...${NC}"
    git push origin main
else
    echo -e "${YELLOW}‚ö†Ô∏è Ready to create GitHub repo. Run: gh repo create portfolio-manager --public${NC}"
fi

echo -e "${GREEN}Ìæâ Enhanced daily routine completed!${NC}"
echo -e "${BLUE}Environment ready for:${NC}"
echo "- Jupyter notebooks: jupyter notebook"
echo "- Data analysis in: $DAILY_FOLDER"
echo "- Python packages: pandas, numpy, scikit-learn, anthropic"
