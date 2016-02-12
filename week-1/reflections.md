## Think About Time
I have checked all the different links and took a closer look at the principles of **time-boxing:** A time management framework in which you are _given a specific amount of time to complete a task, but can no longer work on it beyond that time-frame._ As Parkinson’s Law learned that we tend to procrastinate and ”let work expand so as to fill the time available for its completion”, this model aims to let you spend your time more efficiently.

**“Il Pomodoro”** is a specific time-boxing model with a high fun-factor (stylized branding, a real tomato kitchen clock to alarm you when time is up to finish a specific activity and other gadgets) In sum, you get _25’ to complete an activity (or sub activity)_. When the alarm sounds, you are allowed to take a short break, but you can no longer work on the task. Before starting a next session, the model requires you to _reflect_ on the previous session and how you could have done better. This way you learn how to make better estimations of how to break down large tasks into 25’ blocks etc.

I am quite detail oriented and perfectionistic, which makes me a thorough but relatively slow learner. As technology evolves so fast, I want to drop the aim for 100% and **go more for the 80/20 rule**. In this, I will experiment with the**Pomodoro technique** and other Time-Boxing models. Next to that, I believe its a great time to take some **small habits which will make me save much time in the long run** (ie. practice typing skills, learn one shortcut every day etc.)

## The Command Line
**1. What is a shell? What is "bash?"**

A shell is the command-driven structure under the hood of the graphical interface that we are most used to see on computers. A user can do manipulations of the shell in the Terminal. Any manipulation in the shell can be seen in the graphical interface and vice versa. A “bash” is a user profile with unique preferences etc. This allows multiple users to access the raw computing power. (Unix is a multi-user driven platform to maximize the use of early, expensive computer power in the 60-70s)

**2. What was the most challenging for you in going through this material?**

The look and navigation of a terminal environment is not very familiar. I still have a tendency to click on items (for example the results of an ls-command). And the results of a man function are also hard to navigate through. My initial fears of the terminal window have however been replaced by enthusiasm for it's power and efficiency.

**3. Were you able to successfully use all of the commands?**

Yes, the instructions set forth by Zed. A. Shaw are very clear. I did however spend some more time on some functions to profoundly understand how they worked and tried some variations with the different options to better grasp the use of a command.

**4. In your opinion, what are the most important commands and arguments to know?**

1. pwd: Find your current location in context of other files
2. Folder and file navigation / creation etc. (mkdir, cd, rmdir, …) These seem to be very useful to automate tasks in the setup of a new environment or the automation of tasks (ie. archiving old files from one folder to another)
3. grep: This function seems to be extremely useful to find specific data across your whole directory, without having to open each folder etc.

**5. Can you remember what each of the following does of the top of your head? Write what each does.**

-pwd: Print Working Directory: This command shows your current location in the file directory

-ls: This command lists the items in the current folder

-mv: mv lets you move files and folders from one place to another. It can also rename the file to something else

-cd: Change directory: this function allows you to navigate to other folders

-../: One level up: If you combine this with the cd command it will take you to the parent folder

-touch: The touch command allows you to make new, empty files

-mkdir: Make Directory is a command that creates new folders/directories

-less: The less command is a tool to page through a file. The file content will be projected in the terminal window in a formatted way. You can go to the next screen with arrow navigation or with the space bar.

-rmdir: Remove Directory is a function that will remove a folder / directory

-rm: The touch command allows you to remove individual files; one by one or in batches

-help: A command (Windows) that shows you the use of a specific command, the syntax etc. In unix, you can summon this command through “man”

## Forking and Cloning
**If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be?**

Create a new repository: Go to your GitHub account on github.com and click on the plus icon next to your avatar (upper right corner) In the dropdown, select “New Repository”. Now you will have to name your repository, chose whether to keep it private or publicly accessible and select the license rights to the content of your repository (if you would make it public). Click create and you’re all set.

Fork a repository: Click on the “Fork” icon on the github page of that repository. This will prompt a page where you can select where you want to fork it to (ie. your own profile, an organization etc.) GitHub will then copy all the content of the original repository to the location you specified.

Clone a repository: Copy the URL of the GitHub repository to your clipboard. Go to your Terminal and navigate to the folder where you want to obtain the files from GitHub (using the **cd** command). Once there you type the commando git clone [URL] and press enter.

[URL] represents the url that you copied from the GitHub repository page. You will see the cloning progress in the Terminal window, but to be sure it’s safe to double check by using the **ls** command and see if the new repository appeared in the desired directory.

**Why would you fork a repository as opposed to create a new one?**

A forked repository is a copy of an existing repository, including all the change history that is associated to that repository. If you create a new one, you will dismiss a lot of existing information. Next to that it’s convenient to not have to transfer the content manually from the original repository to the new one (forked repositories take all the content with them).

**What struggles did you have setting up git and GitHub? What did you learn in the process?**

The video’s clearly explained the purpose of git and GitHub, and I managed to create, fork and clone both GitHub repositories to my local directory easily. I now better understand what I was doing in the week 0 computer setup (where I had no clue what I was doing).

I had some struggle to open the p0-cli-exploration files in sublime as I was trying to use the command **sublime p0-cli-exploration**, but some search on Google and in my .bash-profile revealed that I should use **subl p0-cli-exploration** instead…