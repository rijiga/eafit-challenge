#!/usr/bin/env bash
# =============================================================================
# Start the Avatar Issuer Chatbot locally
# =============================================================================
#
# Prerequisites:
#   - Avatar VS Agent running (setup.sh completed)
#   - config.env sourced
#
# Usage:
#   source avatar/config.env
#   ./avatar/scripts/start.sh
#
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SERVICE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

# Load configuration
# shellcheck source=../config.env
source "$SERVICE_DIR/config.env"

# Defaults (can be overridden by env)
VS_AGENT_ADMIN_URL="${VS_AGENT_ADMIN_URL:-http://localhost:${VS_AGENT_ADMIN_PORT:-3002}}"
CHATBOT_PORT="${CHATBOT_PORT:-4000}"

echo "============================================="
echo " Avatar Issuer — Local Start"
echo "============================================="
echo "  VS-Agent URL : $VS_AGENT_ADMIN_URL"
echo "  Chatbot port : $CHATBOT_PORT"
echo "  Service name : ${SERVICE_NAME:-Avatar Issuer}"
echo ""
echo "  Note: This is a placeholder. Students should implement"
echo "  their own chatbot in the issuer-chatbot/ directory."
echo ""

echo "To implement your chatbot:"
echo "  1. Create avatar/issuer-chatbot/ directory"
echo "  2. Implement the chatbot using the VS Agent API"
echo "  3. Run: ./avatar/scripts/start.sh"
echo ""
