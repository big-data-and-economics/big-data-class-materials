#!bin/bash

# Bash script takes inputs for upstream-repo-url and commit-hash:

read -p "Enter upstream-repo-url, the url you forked from: " upstream_repo_url
read -p "Enter commit-hash, the seven-digit mix of letters and numbers linked to your commit found in your commit history/git log: " commit_hash

# Fetch from upstream branch of forked repository
git fetch --all

# Create new branch named upstream/main
git checkout -b pull-request-branch upstream/main

# Add upstream github repository
git remote add upstream $upstream_repo_url

# Cherry-pick specific commits to merge as a pull request
git cherry-pick $commit_hash #The seven-digit mix of letters and numbers associated with the commit found on GitHub or in your git log
#If the commit is a merge, then
#git cherry-pick -m 1 <commit-hash> # The seven-digit mix of letters and numbers associated with the commit found on GitHub or in your git log

# Push to your forked repository
git push -u origin pull-request-branch

#Return to the main branch
git checkout -b origin/main

# Destroy once it has served its purpose
git branch -d pull-request-branch