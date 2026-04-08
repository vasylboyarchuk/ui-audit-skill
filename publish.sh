#!/bin/bash
# Usage: ./publish.sh "what changed"
# Example: ./publish.sh "broadened C2 rule, fixed H4 wording"

set -e

MESSAGE=${1:-"update skill"}

# Repackage
echo "📦 Packaging..."
rm -f ui-audit.skill
zip -r ui-audit.skill . --exclude "*.git*" --exclude "publish.sh" --exclude "CLAUDE.md" --exclude "*.skill"
echo "✅ ui-audit.skill created"

# Install locally
echo "🔧 Installing..."
claude skill install ui-audit.skill
echo "✅ Skill installed"

# Commit and push
echo "🚀 Pushing to GitHub..."
git add .
git commit -m "$MESSAGE"
git push
echo "✅ Pushed"

echo ""
echo "Done. Version published: $(date '+%Y-%m-%d %H:%M')"
