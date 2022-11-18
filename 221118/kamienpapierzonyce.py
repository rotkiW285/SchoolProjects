import random

user_action = input("Wybierz (kamien, papier, nozyce) (Wpisz bez polskich znaków): ")
possible_actions = ["kamien", "papier", "nozyce"]
computer_action = random.choice(possible_actions)
print(f"\nWybrałeś {user_action}, komputer wybrał {computer_action}.\n")

if user_action == computer_action:
    print(f"Obaj gracze wybrali {user_action}. Jest remis")
elif user_action == "kamien":
    if computer_action == "nozyce":
        print("Kamien niszczy nożyce! Wygrałeś!")
    else:
        print("Papier przykrywa kamień! Przegrałeś.")
elif user_action == "papier":
    if computer_action == "kamien":
        print("Papier zakrywa kamien! Wygrałeś!")
    else:
        print("Nożyce tną papier! Przegrałeś.")
elif user_action == "nozyce":
    if computer_action == "papier":
        print("Nożyce tną papier! You win!")
    else:
        print("kamien niszczy nożyce! You lose.")