#!/bin/bash

#Needed program
#sudo apt install tree

# Example use:
# ./make_directory.sh my_project

# Check if the project name argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <project_name>"
    exit 1
fi

# Get the project name from the command line argument
project_name=$1

# Create the main project directory
mkdir "$project_name"
cd $project_name

# Create the 'data' directory with subdirectories
mkdir -p data/raw
mkdir -p data/clean
mkdir -p data/temp

# Create the 'code' directory with subdirectories
mkdir -p code/analysis
mkdir -p code/build

# Create the 'output' directory with subdirectories
mkdir -p output/figures
mkdir -p output/tables

# Create the 'literature' directory
mkdir literature

# Create the 'writing' directory with subdirectories
mkdir -p writing/notes
mkdir -p writing/drafts
mkdir -p writing/edits

# Create the 'presentations' directory with subdirectories
mkdir -p presentations/slides
mkdir -p presentations/notes

# Optional: Create empty placeholder files if needed
touch data/raw/.placeholder
touch data/clean/.placeholder
touch data/temp/.placeholder
touch code/analysis/.placeholder
touch code/scripts/.placeholder
touch output/figures/.placeholder
touch output/tables/.placeholder
touch writing/notes/.placeholder
touch writing/drafts/.placeholder
touch writing/edits/.placeholder
touch presentations/slides/.placeholder
touch presentations/notes/.placeholder

# Display the created directory structure
echo "Directory structure created:"
tree
