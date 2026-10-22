#!/usr/bin/env bash

# Author: SangJeong Kim
# Last Modified: 2026-10-21

set -euo pipefail

CONTAINER_USER="${1:-$CONTAINER_USER}"
CONTAINER_HOME="${2:-$CONTAINER_HOME}"
CONTAINER_WORK_DIR="${3:-$CONTAINER_WORK_DIR}"

if ! id "${CONTAINER_USER}" &>/dev/null; then
    echo "User ${CONTAINER_USER} does not exist" >&2
    exit 1
elif [[ ! -d "${CONTAINER_HOME}" ]]; then
    echo "Home directory ${CONTAINER_HOME} does not exist" >&2
    exit 1
elif [[ ! -d "${CONTAINER_WORK_DIR}" ]]; then
    echo "Work directory ${CONTAINER_WORK_DIR} does not exist" >&2
    exit 1
fi

echo "[INFO] step 1/3: change ownership to ${CONTAINER_USER}"
sudo bash "${CONTAINER_WORK_DIR}/.devcontainer/sjsh/root/change_owner.sh" "${CONTAINER_USER}" \
    --target "${CONTAINER_HOME}" \
    --target "${CONTAINER_WORK_DIR}:${CONTAINER_WORK_DIR}/.agents"

echo "[INFO] step 2/3: enable corepack"
corepack enable
corepack prepare pnpm@latest --activate

echo "[INFO] step 3/3: install dependencies"
cd -- "${CONTAINER_WORK_DIR}"
if [[ ! -f package.json ]]; then
    echo "[INFO] No package.json yet. Follow README.md to create the application."
elif [[ -f pnpm-lock.yaml ]]; then
    pnpm install --frozen-lockfile
else
    pnpm install
fi
