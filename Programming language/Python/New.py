import random

def game():
  print("Start of game enter start or exit below")
  start_input=input("Enter your chose ")
  if(start_input=="start"):
    print("Game started")
    while True:
      choices = ['s', 'p', 'r']
      print("\n--- Stone, Paper, Scissors Game ---")
      print("Rules: 's' for Stone, 'p' for Paper, 'r' for Scissors")
      # 2. Get user input
      user_choice = input("Enter your choice (s/p/r): ").lower()

      if user_choice not in choices:
        if user_choice == "start":
          print("Game started")
          continue
        if user_choice == "exit":
          print("Game exit")
          break
      else:
        print("Invalid choice! Please restart and pick 's', 'p', or 'r'.")

      # 3. Computer's choice
      computer_choice = random.choice(choices)
      if (computer_choice == "s"):
        print("Computer chose: Stone")
      elif (computer_choice == "p"):
        print("Computer chose: Paper")
      else:
        print("Computer chose: Scissors")

      # 4. Determine result
      if user_choice == computer_choice:
          print("It's a Tie!")

      elif (user_choice == 's' and computer_choice == 'r') or \
          (user_choice == 'p' and computer_choice == 's') or \
          (user_choice == 'r' and computer_choice == 'p'):
          print("You Win!")

      else:
          print("You Lose!")
  else:
    print("Game exit")
    return

game()