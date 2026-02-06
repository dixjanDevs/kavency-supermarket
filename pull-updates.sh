#!/bin/bash

# Color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}🔄 Syncing Kavency Supermarket Updates${NC}"
echo "=========================================="

# Pull latest changes
echo -e "${GREEN}📥 Pulling updates from GitHub...${NC}"
git pull origin main

# Show last commit
echo -e "\n${GREEN}📝 Latest update:${NC}"
git log --oneline -1

echo -e "\n${GREEN}✅ Sync complete!${NC}"