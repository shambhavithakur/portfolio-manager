#!/bin/bash

echo "🔍 Portfolio Manager Status Check"
echo "================================="

# Check Git status
echo "📁 Git Repository:"
git status --porcelain
if [ $? -eq 0 ]; then
    echo "✅ Git repository is clean"
else
    echo "⚠️ Uncommitted changes found"
fi

# Check remotes
echo -e "\n🌐 GitHub Connection:"
git remote -v
if git remote get-url origin >/dev/null 2>&1; then
    echo "✅ GitHub remote connected"
else
    echo "❌ No GitHub remote found"
fi

# Check Python environment
echo -e "\n🐍 Python Environment:"
python --version
echo "📦 Key packages:"
pip list | grep -E "(pandas|numpy|jupyter|kaggle|anthropic)" || echo "❌ Some packages missing"

# Check today's work folder
TODAY=$(date +%Y-%m-%d)
if [ -d "content/daily-posts/$TODAY" ]; then
    echo -e "\n📅 Today's Work Folder:"
    echo "✅ Created: content/daily-posts/$TODAY"
    ls -la "content/daily-posts/$TODAY"
else
    echo -e "\n❌ Today's work folder not found"
fi

echo -e "\n🎯 Ready for daily analysis!"
