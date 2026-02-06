#!/bin/bash

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}🚀 Kavency Supermarket - Update Sync${NC}"
echo "=================================="

# Check for uncommitted changes
if [[ -z $(git status --porcelain) ]]; then
    echo -e "${YELLOW}No changes to commit.${NC}"
    exit 0
fi

# Show changes
echo -e "${GREEN}📋 Changes detected:${NC}"
git status

# Add all files
echo -e "\n${GREEN}📦 Adding files...${NC}"
git add .

# Commit with timestamp
COMMIT_MSG="Update: $(date '+%Y-%m-%d %H:%M:%S')"
echo -e "\n${GREEN}💾 Committing: $COMMIT_MSG${NC}"
git commit -m "$COMMIT_MSG"

# Push to GitHub
echo -e "\n${GREEN}🚀 Pushing to GitHub...${NC}"
git push origin main

echo -e "\n${GREEN}✅ Update pushed successfully!${NC}"
echo -e "${YELLOW}🌐 Your site will update in 1-2 minutes at:${NC}"
echo "https://[YOUR_USERNAME].github.io/kavency-supermarket/"