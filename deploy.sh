#!/usr/bin/env bash
set -e

pip install lektor
lektor build -f webpack --output-path /tmp/dist
rm -rf /tmp/dist/.lektor

echo "Starting deploying..."
BRANCH="gh-pages"
git config --global url."https://".insteadOf git://
git config --global url."https://github.com/".insteadOf git@github.com:

git fetch --all
git checkout ${BRANCH}
git clean -fd
cp -vr /tmp/dist/* .
git config user.name "GitHub Actions"
git config user.email "github-actions-bot@users.noreply.github.com"
git add .
git commit -m "Deploy new version"
git push --force "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" ${BRANCH}

echo "Deploy complete"