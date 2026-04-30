#!/bin/bash


if ! git rev-parse --is-inside-work-tree &>/dev/null; then
    echo "❌ This is NOT a Git repository."
    exit 1
fi

echo "✅ Git repo detected."

BRANCH=$(git branch --show-current)
LAST_COMMIT=$(git log -1 --pretty=format:"%s")

echo "🌿 Branch     : $BRANCH"
echo "💬 Last Commit : $LAST_COMMIT"

CHANGES=$(git status --porcelain)

if [ -z "$CHANGES" ]; then
    echo "✅ Working tree is clean — nothing to commit."
else
    echo "⚠️  Uncommitted changes detected:"
    echo "$CHANGES"
fi
