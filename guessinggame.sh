
#!/bin/bash

# Function to count files in the current directory
function count_files {
    ls | wc -l
}

# Main function
function guessing_game {
    local guess
    local correct_answer=$(count_files)
    
    while true; do
        echo "Guess the number of files in the current directory:"
        read -r guess
        
        if [[ $guess -eq $correct_answer ]]; then
            echo "Congratulations! You guessed it right."
            break
        elif [[ $guess -lt $correct_answer ]]; then
            echo "Too low! Try again."
        else
            echo "Too high! Try again."
        fi
    done
}

# Execute the guessing game
guessing_game
