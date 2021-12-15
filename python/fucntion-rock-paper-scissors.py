def fun():
    while True:
        user1 = input("user 1- do yo want to choose rock, paper or scissors?")
        user2 = input("user 2- do you want to choose rock, paper or scissors?")
        if (user1 == user2):
            print("tie")
        elif user1 == 'rock':
            if user2 == 'scissors':
                print("Rock hits scissors(user1 wins)!")
            else:
                print("Paper fold scissors(user2 wins)!")
        elif user1 == 'scissors':
            if user2 == 'paper':
                print("Scissors cuts papers(user1 wins)!")
            else:
                print("Rock hits scissors(user2 wins)!")
        elif user1 == 'paper':
            if user2 == 'rock':
                print("Paper folds rock(user1 wins)!")
            else:
                print("Scissors cuts paper(user2 wins)!")

        else:
            print("Invalid input! You have not entered rock, paper or scissors, try again.")
        print("Do you want to play again? (Y/N)")
        ans = input()
        if ans == 'n' or ans == 'N':
            break
    print("bye")
    exit(0)
print(fun())