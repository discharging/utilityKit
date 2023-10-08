#!/bin/bash

# Check if the first argument (directory name) is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

# Create the directory with the first argument as its name
directory_name="/home/kamlesh/Downloads/50 Projects In 50 Days - HTML, CSS & JavaScript/50days50projects/$1"
mkdir "$directory_name"

# Create the default files inside the directory
touch "$directory_name/index.html"
touch "$directory_name/style.css"
touch "$directory_name/script.js"

# You can add content to these files if needed
# For example, to add content to index.html:
echo "<!DOCTYPE html>
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
</html>" > "$directory_name/index.html"

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
"> "$directory_name/style.css"

echo "Directory '$directory_name' created with default files: index.html, style.css, script.js"

