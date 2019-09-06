
# Welcome 

**Trivia Quiz in the CMD** is my first CLI written in ruby and is to be assessed as our first ruby assignment for the [Coder  Academy](https://coderacademy.edu.au/) FastTrack Bootcamp.

Its a simple, intriguing, challenging application **(Trivia Quiz)** that display true or false questions for the user to answer with either 1 or 0 answer which also calculate their score at the end of the quiz

## Clone

- Clone  this  repo  to  your  local  machine  using  `https://github.com/blakes/ca_terminal_app.git`

## Features


- Verify they want to play the quiz 

- load json file of questions into allocation

- User can answer true or false for each question their score is calculated at the end of the quiz

## Help  File
​
Dependencies used are:
- colorize - Ruby string class extension. It add some methods to set 
- json - Implementation of the JSON specification to read or write json files

 ### **Installation**

#### Running the Application

click on the move_to_dict file to set up the application environment

to typing <b>ruby index.rb</b> in the dict working directory you just created with move_to_dict

you can check who created this application by passing arugment credit e.g. <b>ruby index.rb credit</b>

#### Editing  the  file  in  your  own  IDE

​

If you're playing around with the file within your own IDE, simply run `code index.rb`in the terminal to execute and run or open manually with your preferred text editor

### How to use Trivia Quiz in the CMD

​

The main menu will give you 3 options:

1) Veirfy they would like to play the quiz

2) Load list of questions from file allow user select true or false answer

3) Calculate score at the end of the quiz, allow the user to play again or exit the application, allow user to play again after the quiz

#### **How  do  I  use  it?**

​You will be greeted by a welcome screen which ask do you to play the trivia quiz with either Y for yes which prepare the quiz, they answer 1 for true or 0 for false which then display reason if they answer is right or wrong, when you have finish all the questions of the quiz will be provided with your quiz score count, and a option to play again if the user wishes.

### System  requirements

Operating System - Windows 95 or later, Mac OS X 10 or later, or Linux
Processor Speed - Pentium 4, 3.2 GHz or Power PC G5, 2.0 GHz
Memory - At least 512Mb
Hard Disk Space - At least 1GB​

# Software Development Plan - Trivia Quiz in the CMD



[Github](https://github.com/blakes/ca_terminal_app)

### <u>Statement of Purpose and Scope</u>

Trivia Quiz in the CMD is a CLI that allows a user to play a game of sort which is a trivia quiz application it prompts the user if they would to continue with the trivia quiz or exit the application instead. the application has over fifty questions and associated answers, the is prompt with either a true or false answer by providing 1 or 0 to the corresponding question.At the conclusion of the trivia quiz the user will be provide with a total score of the question answered correctly.

There are many types of trivia quiz applications on the internet online that offer different experiences but they are often bloated with advertisement that don't provide a positive interactive user experience which leads the user disappointed which causes the user to leave the game to find another game to provide a significant or better user experience. this trivia provides different categories of trivia questions like Animals & Nature,Health, Geography & Travel,Sports, Fun Facts,Under your nose, Famous People, Movie and History which are picked at random into ten unique questions from the categories described above.

The target audience for Trivia Quiz in the CMD are people are after a challenge to test their knowledge from different categories in this trivia quiz game or people fans of trivia quiz. I'm developing this program for people like playing trivia quiz or just a like challenege then other trivia quiz games out there.

An example of how a user would use this program is people who likes challenges to beign or conclude their day by playing a simple but fun trivia quiz game, can you quickly open the program and start to play right away.



### <u>Features</u>

##### <u>Feature 1 - Veirfy to play quiz and scoring at the end</u>

This first feature (verify to play) provides the user with the option to play the trivia quiz or to exit the application by typing N to quit, or continue to play the quiz by typing Y. this feature (scoring at the end) provides the user with the number questions they answerred correctly and after to it ask they want to play another quiz or to quit the trivia quiz.

##### <u>Feature 2 - load questions into quiz/u>

This feature loads the json file containing questions and there corresponding answer which then stores into an array of data, produces ten questions for the user to answer with either 1 for true or 0 for false. then provides feedback to user which includes the right answer and reasoning which states why its true or false according to factorial evidence.

##### <u>Feature 3 - random shuffle of questions</u>

This feature produces an shuffle of the array of the questions in the array then limits the amount the questions to displayed to prevent the user from being overwhelmed or bloated with 51 questions stored in the json file, providing the user ten questions help the user feel more immersive in the experience.


### <u>User Interaction and Experience</u>

Trivia Quiz in the CMD was design with the user in mind with its clearly labelled prompts and to provide the user with less typing, the color styling to provide accessibility for clear vision and use of the trivia quiz application.  

When the program first opens to the user, they will be shown the will be prompted if the would like to continue with the game by typing Y or N for the program to be exit, then the questions will be loaded into an array ready for user to answer each question with either a 0 for false answer or 1 for true answer for the current question, then it will display a final score at the end of the gameplay, it will prompt the user if would like to play again.

```



### Control Flow Diagram


![](https://github.com/blakes/ca_terminal_app/blob/master/software_diagram.png)

- A larger version of the control flow diagram is in the docs folder.



### Implementation Plan



##### <u>Feature 1 - Veirfy to play quiz and scoring at the end</u>

This feature will be implemented by writing an case/when statement when users types in Y they we be taken to the trivia quiz which calls load_file and run_quiz methods and scoring at the end of the quiz is done my iteration within a for each loop for each quustion 

##### <u>Feature 2 - load questions into quiz</u>

This feature will be implemented by writing a function called load_file and run quiz which load_file imports the json file with help of the ruby gem "json" and then stores in a array  which then prepares it for the foreach loop. feature 3 handles the rest of the functioning of load questions ready for the trivia quiz to start which helps to calcuate score at the end with iteration of score within the for each loop in run_quiz method.

##### <u>Feature 3 - random shuffle of questions</u>

this features random shuffle and sample the array and limit the questions to ten from the orginal 51 questions array sub class fucntion are because to reduce runtime and code usage

Feature 1 
create welcome screen (3)
use when/case statment to select Y or N (3)
use abort for exiting when user select N(3)
use run_quiz/load_file when Y is selected (3)
create scoring feature at the end of gameplay using iteration in for loop(1)


Feature 2 
load json file for questions (3)
for each loop for questiosn (3)
input questions from file into array usable for next function (3)
provide feedback to user of wrong or correct answer (3)
error checking if file exist using beign rescue ecception handling (2)

Feature 3 
use sample array to limit amount (3)
use shuffle array to shuffle questions around (3)
use for each loop belonging to run_quiz (3)
load_file and run_quiz is used in conjunction with this method (2)


Priority key  =   (1) Low     (2) Medium      (3) High

****Prompts User if you would to play or to exit by inputing Y for yes or N for no.

Are you ready to play? -.- (Y/N)
y

****user inputed Y for yes so start trivia quiz

Running Trivia Quiz. You are ready to go!

****user can now select 0 for true or 1 for false answer for each question prompted

Please type 1 for true answer or type 0 for false answer.

All kinds of rocks are unable to float on water
1
Wrong Answer!
FALSE - Due to their weight, rocks are believed to sink when submerged in water. However, that is not the case with pumice rocks. Pumice is very light, and is even considered to be classified as a glass because is contains no crystals or a mixture of minerals. It is the only rock that can float on water.


While filming Lord of the Rings, Viggo Mortensen, who plays Aragorn, broke two toes.
0
Wrong Answer!
TRUE - The scene where Viggo Mortensen kicks the helmet near a pile of orcs, he actually screams so hard because he broke two toes. They actually used the footage in the movie.

Wolverine was originally an enemy of the Hulk
1
Correct Answer! 

TRUE - Before the X-Men comic books, Wolverine was originally an enemy of the Hulk. In the 1974 issue of The Incredible Hulk #180, the original Wolverine did not have retractable claws but instead he wore gloves with claws attached. He had animal like senses and rage with Spider-man like strength

Yin Yang is a well-known religious symbol in Taoism.
1
Correct Answer! 

TRUE - Originating from East Asia, Yin Yang is a circular symbol divided into two swirling sections, the black and the white where it represents perfect harmonic balance.

A peanut is not a nut.
1
Correct Answer! 

TRUE - Peanuts are indeed classified as legumes and not nuts.

An owl's eyes are bigger than its brain.
1
Correct Answer! 

TRUE - The large eyes of an owl could gather great information since they can see things well, but the small brain cannot process such large optical data gathered by the large eyes. Poor owls.

Michael Phelps is considered the most successful Olympian
1
Correct Answer! 

TRUE - Olympian swimmer Michael Phelps is considered to be the most successful Olympian, having won a total of 22 medals at the 3 Olympics he has taken part in. Oh, and have we mentioned that 18 of the medals he'd won are gold?

Sakura', trees that bloom pinkish flowers, is also called 'pomegranate blossom'
0
Correct Answer! 

FALSE - A sakura tree is called the cherry blossom tree. The plantings of cherry trees originated in 1912 as a gift of friendship to the People of the United States from the People of Japan. In Japan, the flowering cherry tree, or "Sakura," is an exalted flowering plant.

The Parthenon, a temple of the goddess Athena can be found in Greece.
1
Correct Answer! 

TRUE - The Athenians built the Parthenon for their patron, Athena, the goddess of war and wisdom. Up to this day, the Parthenon still stands and is one of the most popular tourist spots in Greece.

Aerosmith made more money from Guitar Hero than any albums
1
Correct Answer! 

TRUE - Activision says Guitar Hero: Aerosmith has earned the band more royalties than any of their albums. Activision CEO Bobby Kotick was quoted by MTV Multiplayer at the company's analyst day as saying that the band is enjoying more than just exposure to new fans and renewed interest of loyal rockers thanks to the videogame tie-in

**** shows score board 
you got 8 out of 10 
End of Trivia Quiz. Thanks for Playing
Are you ready to play? -.- (Y/N)

Examples of Trello in use:

![](https://github.com/blakes/ca_terminal_app/blob/master/Blake_Symington_TM-Trello_Board.png)

Unit Testing in use:

![](https://github.com/blakes/ca_terminal_app/blob/master/Blake_Symington_TM-Trello_Board.png)




### <u>**Timeline**</u>

- Create main menu - 03/09/19
- Complete feature 1 - 04/09/19
- Complete feature 2 - 04/09/19
- Complete feature 3 - 04/09//19
- Unit Testing - 6/09/19
- Error Handling - 6/09/19
- Package final product - 6/09/19



## License


[![License](https://camo.githubusercontent.com/107590fac8cbd65071396bb4d04040f76cde5bde/687474703a2f2f696d672e736869656c64732e696f2f3a6c6963656e73652d6d69742d626c75652e7376673f7374796c653d666c61742d737175617265)](http://badges.mit-license.org/)

​

- **MIT  license**