# This file is the full version of the homework, which you should only work
# on once you get pokerBasic.py to work. Read that file before reading this
# file...

# The code below contains 30 numbered steps. In each step, you must follow
# the instructions for that part.
# In some cases, the step requires you to fill in a blank (____). In these
# cases, the text you add cannot include a ";" symbol because you are just
# supposed to complete the partially-provided Python statement. 
# In other cases the step requires that a ... be replaced. In these cases,
# you may use multiple statements (on multiple lines and/or separated by ';')

# As we know, this is the full version of the homework. As such, there will
# be certain step where I introduce specific REQUIREMENTS on how they step is
# to be implemented. To get the points for such a step, you must follow its
# requirements. For example, suppose that there was one step where you didn't
# follow the requirement, but the code still works, nonetheless. Well, in
# such a case, we know a few things: 1) you will get at least 60%, because
# the code works and these REQUIREMENTS were not a part of pokerBasic.py. And
# 2) You will get more than 60%, because only one requirement was not met,
# meaning that most of the requirements described below were met.

# The code below contains 30 numbered steps (whereas the basic version had 22
# steps, because it ignored straights and flushes). OK, let's see the steps:



# 1.
# This line defines the deck of 52 cards.
# In the basic version I gave you a direct answer for a list with each of the
# 52 values. In this better version, however, you must compute these 52 card
# values, all on one line.
# REQUIREMENTS:
#  In filling in the blank below, you can only use these functions: zip(),
#     range(), chr().
#  In filling in the blank, you CANNOT use any of these: 5, 6, ♣, ♠, ♦, or ♥.
#     Hints: As stated, you can't use a "♣" symbol-- but you can use ord("♣")
#              to find its unicode value, then you use that value in a chr().
#            Similarly, you can't use a "6", but you can use a range() to
#              create an object that contains a 6.
#
# So, following the above rules, fill in the blank below:
deck=[*zip(([*range(2, 11)] + ['J', 'Q', 'K', 'A'])*4, [chr(9824), chr(9827), chr(9829), chr(9830)]*13)]
# print(deck)

# If your above code is correct, then pasting the [___] into interactive mode
# should produce the same list values as what was provided for you in the
# pokerBasic.py file. Note: the order of these 52 cards is not important, but
# my implementation created the order provided in pokerBasic.py.


# 2.
# This step shuffles the deck. It is the same as for pokerBasic.py.
import random

random.shuffle(deck)
# print(deck)

# 3.
# This step puts 5 cards from the deck into your hand. Same as pokerBasic.py.
hand = random.sample(deck, 5)
# print(hand)
for i in range(len(hand)):
    deck.remove(hand[i])
# print(deck)

# 4.
# This line is the header of a loop that runs 3 times. Same as pokerBasic.py.
for times in range(3):
    
#   5.
#   Now you are in the loop body. For the body's first line, simply type:
    print("You Have:",end=" ")

#   6.
#   This next line loops over the card in your hand, but it does it better
#   than in the basic version.
#   REQUIREMENT: To keep track of the indices of the cards as you loop over
#                them, you must use enumerate (see lecture 4, slide 94)
    for i, card in enumerate(hand, 97):
        
#       7.
#       This prints the cards, but has extra rules beyond the basic version.
#       REQUIREMENTS:
#        1) Because we have improved step 6, we now know the index and must
#           use it to print a letter ('a.' to 'e.') along with the card.
#        2) You must use splat on the variable representing the card, thereby
#           turning its face and its suit into two arguments of the print.
        print(chr(i) + ".", *card, end = "  ")
    print("\n")

#   8.
#   Asks the user for input on which cards to discard. Same as pokerBasic.py.
    discard = input("Enter the letters (a-e) all of the cards you want to discard: ")

#   9.    
#   This loops through the characters the user inputted. But, unlike in the
#   basic version, we will consider cases where the user types weird input,
#   and it must still work. (And note that you answer goes in a ____, so you
#   aren't allowed to use multiple statements.)
#   REQUIREMENTS:
#   1) Any upper case inputted letters should get converted to lower case.
#      Hint: Lecture 3, slide 46. 
#   2) Any duplicated inputs need to be removed. Hint: Lecture 5, slide 58. 
#   3) We need the discards to be handled in reverse of their sorted order.
#      (We need this rule since step 10 will delete cards from your hand, and
#       deleting right to left allows the discards' indices to keep lined-up
#       with the hand. (See the warning about changing a list while looping
#       over it, in Lecture 4, slide 42. Technically, we're currently looping
#       over the discards, not the hand -- but the warning of that slide is
#       still relevant to this requirement.)
    for letter in sorted(list(set(discard.lower())), reverse = True):

#       10.
#       This deletes cards from the hand. Same as pokerBasic.py.
        # print(letter, end=" ")
        del hand[ord(letter) - 97]
#         print(hand)

#   11.
#   This ends the loop early if no cards discarded. Same as pokerBasic.py.
    if discard == "":
        break

#   12.
#   This next part fills the hand back up to 5 cards, but has a new rule.
#   REQUIREMENT: you must do this all on one line, and without using a ";".
    hand.extend(random.sample(deck, 5 - len(hand)))
    
# 13.
# This part prints the final state of your hand. It prints "In the end, you
# have:", and then it prints the cards. There are new rules...
# REQUIREMENTS:
# 1) This final printing of the hand should only print if step 11 did not end
#    early (since users would've already seen the final hand, in that case).
#    Hint: See Lecture 4, slide 36.
# 2) The printing of the cards should be done by copy-pasting the code from
#    above steps 6 & 7 (but remove the printing of the a-e letters & the ".")
# 3) Also, add the printing of an empty line when done (same as pokerBasic).
if discard != "":
    print("In the end, you have: ", end = "")
    for i, card in enumerate(hand, 97):
        print(*card, end = "  ")
    print()
    
# 14. Print an empty line (same as pokerBasic): 
print()

# 15.
# Create two tuples for the faces and suits. But there are new rules...
# REQUIREMENT: you must do this all on one line, and without using a ";".
#              Hint: Lecture 4, slides 46 & 73.
values, suits = [*zip(*hand)]

# print(values)
# print(suits)

# 16.
# Create a boolean of if all cards are the same suit (same as pokerBasic): 
flush = suits[0] == suits[1] == suits[2] == suits[3] == suits[4]

# 17.
# This part creates a list of 5 numbers that count how many other cards have
# the same value as the card at each position (same as pokerBasic): 
counts = []
for value in values:
    counts.append(values.count(value))
# print(counts)

# 18.
# Uses the list of 5 numbers to check for 4 of a kind (same as pokerBasic):
if counts.count(4) == 4: print("Four of a kind!")

# 19.
# Uses the list of 5 numbers to check for a full house (same as pokerBasic):
elif counts.count(3) == 3 and counts.count(2) == 2: print("Full House!")

# 20.
# Uses the list of 5 numbers to check for 3 of a kind (same as pokerBasic):
elif 3 in counts: print("3 of a kind!")

# 21.
# Uses the list of 5 numbers to check for 2 pair (same as pokerBasic):
elif counts.count(2) == 4: print("2 pair!")

# 22.
# Uses the list of 5 numbers to check for 1 pair (same as pokerBasic):
elif 2 in counts: print("1 pair.")

# 23. Type this line, as-is (steps 23-30 are all new to this better version):
else:

#   So now we know there are no repeats. Flushes and straights are possible
#   only in such non-repeating cases. But it is also possible that the hand
#   is neither a flush nor a straight, in which case the hand is scored just
#   by its highest card.
 
#   24.
#   To identify straights, we would like to sort the cards. But there is a
#   problem because some of the cards are strings, while others are numbers.
#   So the strings need to be converted as follows: 'J'=>11, 'Q'=>12, 'K'=13,
#   'A'=>14. 
#   But there is a second problem, because step 15 created a tuple for the
#   faces, and tuples are immutable.
#   Anyway, insert into the space below the code that fixes these problems
#   (remember, I allow you as many statements as need to implement a "..."):
    values = list(values)
    if 'J' in values:
        ind = values.index('J')
        values[ind] = 11
    if 'Q' in values:
        ind = values.index('Q')
        values[ind] = 12
    if 'K' in values:
        ind = values.index('K')
        values[ind] = 13
    if 'A' in values:
        ind = values.index('A')
        values[ind] = 14

#   25.
#   Now that the faces are all numbers in a mutable list, they can be sorted.
#   This sounds like a good thing to do, as it'll make it easier to identify
#   straight sequences. So let's sort it:
    values.sort()
    

#   26.
#   This part checks for royal straights.
#   Note that step 23 has ensured that all of the cards here are different.
#   Note that step 25 has ensured that the cards are all sorted.
#   Note that royal straights have a 10 as the LOWEST card.
    if values[0] == 10:

#       27.
#       This part either prints "Royal straight flush!" or "Royal straight!":
        if flush == True:
            print("Royal straight flush!")
        else:
            print("Royal straight!")

#   28.
#   This checks for straights (not royal ones, since step 26 handled those).
#   But note that the ACE, if used in a non-royal straight, can only function
#   as the "1", in a 1-5 sequence (and yet its value is stuck at 14, not 1).
    elif values[0] + 4 == values[4] or (values[0] == 2 and values[3] == 5 and values[4] == 14):

#       29.
#       This part either prints "Straight flush!" or "Straight!":
        if flush == True:
            print("Straight flush!")
        else:
            print("Straight!")

#   30. Fill in the blanks below:
    elif flush == True: print("Flush!")
    elif values[4] == 14: print("Ace high.")
    elif values[4] == 13: print("King high.")
    elif values[4] == 12: print("Queen high.")
    elif values[4] == 11: print("Jack high.")
    else: print(values[4],"high.")
print()
