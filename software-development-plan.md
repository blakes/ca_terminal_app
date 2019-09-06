# Software Development Plan - Zodiac Zen



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

This feature loads the json file containing questions and there corresponding answer which then stores into an array of data, produces ten questions for the user to answer with either 1 for true or 0 for false.

##### <u>Feature 3 - random shuffle of questions</u>

This feature produces an shuffle of the array of the questions in the array then limits the amount the questions to displayed to prevent the user from being overwhelmed or bloated with 51 questions stored in the json file, providing the user 10 questions help the user feel more immersive in the experience.


### <u>User Interaction and Experience</u>

Trivia Quiz in the CMD was design with the user in mind with its clearly labelled prompts and to provide the user with less typing, the color styling to provide accessibility for clear vision and use of the trivia quiz application.  

When the program first opens to the user, they will be shown the will be prompted if the would like to continue with the game by typing Y or N for the program to be exit, then the questions will be loaded into an array ready for user to answer each question with either a 0 for false answer or 1 for true answer for the current question, then it will display a final score at the end of the gameplay, it will prompt the user if would like to play again.

```



### Control Flow Diagram

![](https://github.com/annehomann/zodiac_zen/blob/master/docs/anne-homann-CSB-flowchart_small.png)

![](https://github.com/annehomann/zodiac_zen/blob/master/docs/anne-homann-CSB-flowchart_legend.png)

- A larger version of the control flow diagram is in the docs folder.



### Implementation Plan

##### <u>Feature 1 - Find our your star sign</u>

This feature will be implemented by writing an if/elif statement that cycles through the star signs until the correct sign is selected that corresponds to the user's birth date and month details. The user will be able to enter their information by using two inputs that captures their answers. After the star sign is displayed, the user is taken back to the main menu.

##### <u>Feature 2 - Retrieve your daily horoscope</u>

This feature will be implemented by first, using BeautifulSoup to scrape the horoscope readings from an HTML page and then store them into a list. As there will be 12 readings within the list, it will be easy to access each one separately by their index number. Again, an if/elif statement will be used to cycle through the star signs. An input will be used to capture the star sign entered by the user and that will determine which horoscope reading is returned.

##### <u>Feature 3 - Save daily horoscope to a text file</u>

This feature is a continuation of feature 2 and will be implemented by using the file.write() method which is included within the if/elif conditional statement. The user is prompted after the reading if they wish to save a copy. If the user enters Y, the reading is written to a text file and saved on their local hard drive. The filename is the star sign that was entered and today's date, (E.g. **capricorn_July 01, 2019.txt**). If the user selects N, then they are returned to the main menu.   

| Feature 1                                                    | Feature 2                                                    | Feature 3                                                    |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [  ] Create an input for the user to enter their date of birth (2)<br />[  ] Create an input for the user to enter their month of birth (2)<br />[  ] Use if/elif statement to cycle through star signs (3)<br />[  ] Display correct star sign to user (3)<br />[  ] Take user back to menu (1) | [  ] Create an input for the user to enter their star sign (2)<br />[  ] Use BeautifulSoup for web scraping of horoscopes (3)<br />[  ] Use a list to store scraped readings from each sign (3)<br />[  ] Use indices to access each one (3)<br />[  ] Display daily horoscope reading to user (2)<br /> | [  ] After the reading has been displayed, ask the user if they wish to save their reading (3)<br />[  ] If Y, use a write() method to save the text to a file (3)<br />[  ] Filename will be user's star sign and today's date **(capricorn_July 01, 2019.txt)** (2)<br />[ ] If N, take user back to menu (1) |

Priority key  =   (1) Low     (2) Medium      (3) High

More detailed checklists and deadlines appear on trello board: [Zodiac Zen](https://trello.com/b/5ianrkvy/horoscope-app)

Examples of Trello in use:

![](https://github.com/annehomann/zodiac_zen/blob/master/docs/anne-homann-CSB-project-mgt-trello1.png)

![](https://github.com/annehomann/zodiac_zen/blob/master/docs/anne-homann-CSB-project-mgt-trello2.png)

![](https://github.com/annehomann/zodiac_zen/blob/master/docs/anne-homann-CSB-project-mgt-trello3.png)

![](https://github.com/annehomann/zodiac_zen/blob/master/docs/anne-homann-CSB-project-mgt-trello4.png)

![](https://github.com/annehomann/zodiac_zen/blob/master/docs/anne-homann-CSB-project-mgt-trello5.png)



### <u>**Timeline**</u>

- Create main menu - 28/06/19
- Complete feature 1 - 28/06/19
- Complete feature 2 - 28/06/19
- Complete feature 3 - 29/06//19
- Implement Argparse - 4/07/19
- Unit Testing/Pytest - 5/07/19
- Error Handling - 6/07/19
- Pylint code - 6/07/19
- Package final product - 6/07/19

