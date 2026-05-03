import random

def play_game():
    # 1. Define choices
    choices = ['s', 'p', 'r']
    
    print("--- Snake, Paper, Stone Game ---")
    print("Rules: 's' for Snake, 'p' for Paper, 'r' for Stone")
    
    # 2. Get user input
    user_choice = input("Enter your choice (s/p/r): ").lower()
    
    if user_choice not in choices:
        print("Invalid choice! Please restart and pick 's', 'p', or 'r'.")
        return

    # 3. Computer's choice
    computer_choice = random.choice(choices)
    print(f"Computer chose: {computer_choice}")

    # 4. Determine result
    if user_choice == computer_choice:
        print("It's a Tie!")
    
    elif (user_choice == 's' and computer_choice == 'w') or \
         (user_choice == 'w' and computer_choice == 'g') or \
         (user_choice == 'g' and computer_choice == 's'):
        print("You Win!")
        
    else:
        print("You Lose!")

# Run the game
play_game()