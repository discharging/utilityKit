#!/bin/bash

# # Check if the first argument (directory name) is provided
# if [ $# -eq 0 ]; then
#     echo "Usage: $0 <directory_name>"
#     exit 1
# fi

# Directory where you wnat to look for the pattern
search_directory="/home/kamlesh/Downloads/50 Projects In 50 Days - HTML, CSS & JavaScript/50days50projects"

#Pattern to search for (e.g., "Day")
pattern="Day"

#Find the highest numbered directory that matches the pattern
highest_number=0

for dir in "$search_directory"/"$pattern"*; do
    # Extract the number part of the directory name
    number=$(basename "$dir" | grep -oE "[0-9]+")

    # Check if the number is greater than the current highest number
    if [ "$number" -gt "$highest_number" ]; then
        highest_number="$number"
    fi
done

#Increment the highest number to get the next in sequence
next_number=$((highest_number + 1))

# Create the new directory with the next number in the sequence
new_directory="${search_directory}/${pattern}${next_number}"
mkdir "$new_directory"


# Create the default files inside the directory
touch "$new_directory/index.html"
touch "$new_directory/style.css"
touch "$new_directory/script.js"

# You can add content to these files if needed
# For example, to add content to index.html:
echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Project starter</h1>
    <script src="script.js"></script>
</body>
</html>' > "$new_directory/index.html"

# Optionally, you can add default content to style.css and script.js here.
echo "@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');

*{
    box-sizing: border-box;
}
*,*::before,*::after{
    box-sizing: border-box;
}
body{
    font-family: 'Roboto', sans-serif;
    height: 100vh;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
}
"> "$new_directory/style.css"

echo "Directory '$new_directory' created with default files: index.html, style.css, script.js"

