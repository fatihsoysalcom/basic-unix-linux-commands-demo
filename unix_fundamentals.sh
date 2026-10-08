#!/bin/bash
# Exit immediately if a command exits with a non-zero status.
set -e

# Define a working directory for our demonstration
DEMO_DIR="unix_demo_project"

echo "--- Starting UNIX/Linux Fundamentals Demo ---"

# 1. Create a new directory (mkdir)
echo "Creating directory: $DEMO_DIR"
mkdir "$DEMO_DIR" # Demonstrates 'mkdir' command

# 2. Change into the new directory (cd)
echo "Changing into directory: $DEMO_DIR"
cd "$DEMO_DIR" # Demonstrates 'cd' command

# 3. Print the current working directory (pwd)
echo "Current working directory:"
pwd # Demonstrates 'pwd' command

# 4. Create subdirectories
echo "Creating subdirectories: src, docs"
mkdir src docs # Demonstrates creating multiple directories

# 5. Create empty files (touch)
echo "Creating empty files: README.md, src/main.sh"
touch README.md src/main.sh # Demonstrates 'touch' command

# 6. Write content to a file (echo and redirection >)
echo "Writing initial content to README.md"
echo "# My Demo Project" > README.md # Demonstrates 'echo' and output redirection (overwrite)

# 7. Append content to a file (echo and redirection >>)
echo "Appending more content to README.md"
echo "This is a simple project to demonstrate basic UNIX/Linux commands." >> README.md # Demonstrates appending output

# 8. Write content to another file
echo "Writing content to src/main.sh"
echo -e "#!/bin/bash\necho 'Hello from main.sh!'" > src/main.sh

# 9. List directory contents (ls)
echo "Listing contents of current directory:"
ls # Demonstrates 'ls' command (list files and directories)

echo "Listing contents of 'src' directory:"
ls src

# 10. List directory contents with details (ls -l)
echo "Listing detailed contents of current directory:"
ls -l # Demonstrates 'ls -l' command (long listing format)

# 11. Read file content (cat)
echo "--- Content of README.md ---"
cat README.md # Demonstrates 'cat' command (concatenate and display file content)

echo "--- Content of src/main.sh ---"
cat src/main.sh

# 12. Basic command piping (ls -l | grep)
echo "--- Listing only .md files using pipe and grep ---"
ls -l | grep ".md" # Demonstrates command piping '|' and 'grep' for filtering

# 13. Basic conditional check (if [ -f ... ])
echo "--- Checking if README.md exists ---"
if [ -f "README.md" ]; then # Demonstrates 'if' statement and file existence check '-f'
    echo "README.md exists!"
else
    echo "README.md does not exist."
fi

# 14. Making a script executable (chmod)
echo "Making src/main.sh executable"
chmod +x src/main.sh # Demonstrates 'chmod' command to change file permissions

echo "--- Running src/main.sh ---"
./src/main.sh # Demonstrates executing a script

echo "--- Cleaning up ---"
# Navigate back to the parent directory
cd ..

# 15. Remove the created directory and its contents (rm -rf)
# WARNING: 'rm -rf' is powerful. Use with caution.
echo "Removing demonstration directory: $DEMO_DIR"
rm -rf "$DEMO_DIR" # Demonstrates 'rm -rf' command (remove recursively and forcefully)

echo "--- Demo Finished Successfully ---"
