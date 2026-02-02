#!/bin/bash

# ═══════════════════════════════════════════════════════════════
# Prodesign - Add Assistant to Project
# ═══════════════════════════════════════════════════════════════

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Get script directory (where boilerplate is stored)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Target project path
TARGET_PATH="${1:-.}"

# Convert to absolute path
if [[ "$TARGET_PATH" != /* ]]; then
    TARGET_PATH="$(cd "$TARGET_PATH" 2>/dev/null && pwd)"
fi

# Check if target exists
if [ ! -d "$TARGET_PATH" ]; then
    echo -e "${RED}❌ Error: Directory '$TARGET_PATH' does not exist${NC}"
    exit 1
fi

echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  🤖 Prodesign - AI Product Assistant${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "📁 Source: ${YELLOW}$SCRIPT_DIR${NC}"
echo -e "📁 Target: ${YELLOW}$TARGET_PATH${NC}"
echo ""

# Confirm
read -p "Add Prodesign to this project? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Cancelled.${NC}"
    exit 0
fi

echo ""
echo -e "${BLUE}Copying files...${NC}"

# Copy .claude folder
if [ -d "$SCRIPT_DIR/.claude" ]; then
    cp -r "$SCRIPT_DIR/.claude" "$TARGET_PATH/"
    echo -e "  ${GREEN}✓${NC} .claude/"
else
    echo -e "  ${RED}✗${NC} .claude/ not found in source"
    exit 1
fi

# Copy CLAUDE.md
if [ -f "$SCRIPT_DIR/CLAUDE.md" ]; then
    cp "$SCRIPT_DIR/CLAUDE.md" "$TARGET_PATH/"
    echo -e "  ${GREEN}✓${NC} CLAUDE.md"
fi

# Copy .cursorrules
if [ -f "$SCRIPT_DIR/.cursorrules" ]; then
    cp "$SCRIPT_DIR/.cursorrules" "$TARGET_PATH/"
    echo -e "  ${GREEN}✓${NC} .cursorrules"
fi

# Create features folder if not exists
if [ ! -d "$TARGET_PATH/features" ]; then
    mkdir -p "$TARGET_PATH/features"
    echo -e "  ${GREEN}✓${NC} features/ (created)"
fi

echo ""
echo -e "${GREEN}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}  ✅ Prodesign added successfully!${NC}"
echo -e "${GREEN}═══════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "Next steps:"
echo -e "  1. Open project in Cursor: ${YELLOW}cursor $TARGET_PATH${NC}"
echo -e "  2. Run: ${YELLOW}/init${NC} to setup context"
echo -e "  3. Run: ${YELLOW}/feature [name]${NC} to create your first feature"
echo ""
