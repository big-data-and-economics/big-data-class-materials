#!/bin/bash

# Set the repository owner and name
owner="owner"
repo="repo"

# Get the list of forks using the GitHub API
forks=$(curl -s "https://api.github.com/repos/$owner/$repo/forks" | jq -r '.[].clone_url')



# Clone each fork
for fork in $forks; do
    # Get the owner of the fork
    owner=$(echo $fork | cut -d'/' -f4)
    # Print the owner of the fork
    echo "Owner: $owner"

    # Step 1 clone the fork
    git clone $fork $owner-$repo

    cd $owner-$repo

    # Step 2: Check out the main branch
    git checkout main

    # Step 3: Create a new branch called feedback
    git branch feedback

    # Step 4: Switch to the feedback branch
    git checkout feedback

    # Step 5: Push the feedback branch to the remote repository
    git push -u origin feedback

    cd ../
done