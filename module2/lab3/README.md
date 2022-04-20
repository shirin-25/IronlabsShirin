![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Statistics Foundations
In this lab we are going to put into practice what we learned about the foundations of statistics. You won't need to use Python, just your brain and a little bit of *Markdown*. Hovewer, you will need SQL for the Part 3.

## Your task
Today you'll need to complete the challenges described below.

## Deliverables
You need to submit a markdown file with the solution to the following challenges. You can create a new *.md* file or directly edit the *README.md* to include your solutions.
This file should also include the SQL script for the Part 3.

## Challenges
## Part 1
### Challenge 1
Find a and b, if median=42, mean=50
20,34, 34,  12, 56, 110, 49, a, b.

the missing value of a and b 
a=68
b=62

### Challenge 2
A car hit an average speed of v1 = 60 kmph in the first half of the journey, and hit an average speed of v2 = 110 kmph in the second half of the journey. Determine the average speed of the car.
v1= 60 kmph
v2= 110 kmph
V1+V2=170
170/2 =85kmph

### Challenge 3
The lifetimes of 400 light-bulbs were found to the nearest hour. The results were recorded as
follows.
Lifetime (hours) 0–199 200–399 400–599 600–799 800–999 1000–1199 1200–1999
Frequency         143     97      64      51      14      14        17
Construct a histogram and cumulative frequency polygon for this dataset. Estimate the percentage
of bulbs with lifetime less than 480 hours.

set the hours: (0-1200)

if the vertical axis is “frequency per interval of 200 hours”, the height of the (0,199.5)class is 143 ×200/199.5 = 143.4 to allow for the first class not being of width 200.

estimated number of light-bulbs with lifetime less than 480 hours is 240 + 480 −399.5200 ×(304 −240) = 265.8.

percentage of bubls:
265.8/400 ×100 = 66.4%



### Challenge 4
The time between arrival of 60 patients at an intensive care unit were recorded to the nearest hour.
The data are shown below.
Time (hours) 0–19 20–39 40–59 60–79 80–99 100–119 120–139 140–159 160–179
Frequency     16    13    17    4     4      3       1      1       1
Determine the median, mean and standard deviation for this dataset.
set the hours : (0-180)
mean value is 
median value is
standard deviation is 

Determine the median and semi-interquartile range. 
Time (hours) 0.0 19.5 39.5 59.5 79.5 99.5 119.5 139.5 159.5 179.5

Cumulative frequency 0 16 29 46 50 54 57 58 59 60

Median lies in “40–59” class, corresponding to cumulative frequency 30.
Lower quartile is in “0–19” class, corresponding to cumulative frequency 15. 

Upper quartile is in “40–59” class, corresponding to cumulative frequency 45.
Median = 39.5 +30 − 29/46 − 29 × 20 = 40.7 hours.

Lower quartile = 0.0 +15 − 0/16 − 0 × 19.5 = 18.3 hours.

Upper quartile = 39.5 + 45 − 29/46 − 29 × 20 = 58.3 hours.

Semi-interquartile range = 1/2(58.3 − 18.3) = 20.0 hours.



## Part 2
### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains.
* B. The sum of the values obtained.
* C. The maximum value obtained after rolling both dices.

Describe the following events:
* Case A: Both values are greater than 5.
* Case B: The sum of values is even.
* Case C: The maximum is the value of both rolls.

### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:
* A. The number of figures he picks.
* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.
* C. The number of hearts or spades he picks.

Describe the following events:
* Case A: The number of figures in the cards the player picked is two.
* Case B: The sum of card values is 17.
* Case C: The value of both cards is less than 8.

**Measurable space, random variable and structure: **

* For all three cases
 
    Omega = {(1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (2,1), (2,2), ..., (6,5), (6,6)}
    Structure of events = (Result First Toss, Result Second Toss)
    
A X({3,2}) = (3,2)
    

B X({6,5}) = 6+5 = 11
  
C X({4,5}) = max(4,5) = 5 
    
    
** Describe the events **
Case A {X > 5} = {(6,6)}

 Case B {X is even} = {(1,1), (1,3), (1,5), (2,2), (2,4), (2,6), (3,1), (3,3), (3,5),
                     (4,2), (4,4), (4,6), (5,1), (5,3), (5,5), (6,2), (6,4), (6,6)}
  
Case C {X max is value of both roles} = {(1,1), (2,2), (3,3), (4,4), (5,5), (6,6)}
    
    
    
    
C-2 **Measurable space, random variable and structure: **

* For all three cases
  
    Omega = {(A♥,2♥), (A♥,3♥), (A♥,4♥), (A♥,5♥), (A♥,6♥), (A♥,7♥), (A♥,8♥), (A♥,9♥), (A♥,10♥), (A♥,J♥), 
    (A♥,Q♥), (A♥,K♥),(A♥,A◆), (A♥,2◆), ..., (K♣, K♠)}
   
    Structure of events = {(First Card Pick, Second Card Pick }
    
A   X({3,2}) = 0
    X({A,K}) = 1
    X({K,K}) = 2
   
 B X({3,2}) = 5
    X({3,Q}) = 13
    X({A,K}) = 25
    X({K,K}) = 20
    
C   X({K◆,K♣}) = 0
    X({K♥,K♣}) = 1 
    X({K♥,K♠}) = 2
  
    
** Describe the events **
Case A {X nfig=2} = {(K,K), (K,Q), (K,J), (Q,K), (Q,Q), (Q,J), (J,K), (J,Q), (J,J)}
  
Case B {X sum=17} = {(2,A), (10,7), (J,7), (Q,7), (K,7), (A,2), (7,10), (7,J), (7,Q), (7,K)}
   
* Case C {X < 8} = {(2,2), (2,3), (2,4), (2,5), (2,6), (2,7), (3,2), ..., (7,6) (7,7)}

### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:
* A. The score of player A.
* B. The greatest score.
* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.".
* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 

Describe the following events:
* Case A: The score of player A is 2.
* Case B: The greatest score is lower or equal than 2.
* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins.
  * Player A loses more than 2 coins.
  * Player A neither wins nor loses coins.
  
  
**Measurable space, random variable and structure: **

* For all three cases
   
    Omega = {(1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (2,1), (2,2), ..., (6,5), (6,6)}
    Structure of events = (Player A Result, Player B Result)
    
 A X({3,2}) = 3
   

 B X({4,5}) = max(4,5) = 5 
    
 C X({4,5}) = -1
    X({5,4)) = 1
   
 D  X({3,6}) = 0
    X({6,3}) = 6-3 = 3
  
** Describe the events **
* Case A
  
    {X playerA = 2} = {(2,1), (2,2), (2,3), (2,4), (2,5), (2,6)}
   
* Case B
   
    {X max <= 2} = {(1,1), (1,2), (2,1), (2,2)}
   
* Case C
   
    {X A wins 4 coins} = {(5,1), (6,1), (6,2)}
    {X A loses > 2 coins} = {(1,4), (1,5), (1,6), (2,5), (2,6), (3,6)}
    {X no loss} = {(1,1), (2,2), (3,3), (4,4), (5,5), (6,6)}

## Bonus challenges
### Bonus Challenge 1
Three players take balls from a box. Inside that box there are red, blue, green and black balls. The players can take three balls at mosts with the following rules:

* If the ball is blue, they can take another ball.
* If the ball is green, they get one point and they can take another ball.
* If the ball is red, they can’t take another ball.
* If the ball is black, they lose one point and they can’t take another ball.

Describe the measurable space and the random variable for:
* A. Player A wins. Do not consider ties as a win.
* B. Player A and B get the same points.
* C. All players get 0 points.

### Bonus Challenge 2
Consider the situation of bonus challenge 1 but now with four players. Does anything change in your solutions? What are the changes in each case?

### Bonus Challenge 3
One player takes three balls from a box. Inside the box there are 5 balls: two of them are black and the other three are white. 

Describe the measurable space and the random variable for:
* A. The number of white balls if every time we take a ball we keep it.
* B. The number of white balls if every time we take a ball we put it back again into the box.
* C. The number of black balls if every time we take a ball we keep it.
* D. The number of black balls if every time we take a ball we put it back into the box.

| Attempt | #1 | #2 |
| :---: | :---: | :---: |
| Seconds | 301 | 283 |

## Part 3
### Challenge 1

| #student_id | #score |
| :---------: | :----: |
| 1 | 91 |
| 2 | 72 |
| 3 | 98 |
| 4 | 62 |
| 5 | 62 |
| 6 | 95 |
| 7 | 83 |
| 8 | 86 |
| 9 | 56 |
|10 | 97 |
|11 | 58 |
|12 | 71 |
|13 | 87 |
|14 | 83 |
|15 | 98 |

	student_id	score
count	15.000000	15.000000
mean	8.000000	79.933333
std	4.472136	15.210272
min	1.000000	56.000000
25%	4.500000	66.500000
50%	8.000000	83.000000
75%	11.500000	93.000000
max	15.000000	98.000000


Please find MEAN, SUM, STANDARD DEVIATION, VARIANCE, MIN and MAX.
