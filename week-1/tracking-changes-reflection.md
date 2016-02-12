**How does tracking and adding changes make developers' lives easier?**

As a developer working in a team, you don’t necessarily know what other team members have been working on and what changes they have ready to merge with the master code of the application. By tracking changes, you obtain a clear overview of these changes and the details about their code. Next that, it allows code review by colleagues and if something would still go wrong you can roll-back to a previous state (the messages of the commit will allow to know which state to roll back to).

**What is a commit?**

A commit saves the work done on specific files or directories on a given moment in time. The commit moment can be tracked and rolled back to if required, and contains a unique ID, and author and a timestamp. It is good practice to provide a clean message about the changes made for the particular commit

**What are the best practices for commit messages?**

Because other developers (or yourself later in time) may need to interpret the changes you have made in a particular commit, it is important to be very clear in the communication you add to the commit: What new features does it include, what bugs were fixed etc.

**What does the HEAD^ argument mean?**

The HEAD^ argument refers to the first parent of the commit node (of a branch). This argument gives additional context to the commit (commits can have multiple parents).

The graph on Stackoverflow helped me better understand the concept, but the implementation is still a bit unclear to me.

[http://stackoverflow.com/questions/2221658/whats-the-difference-between-head-and-head-in-git](http://stackoverflow.com/questions/2221658/whats-the-difference-between-head-and-head-in-git)

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**

Stage 1: Work on the local directory (terminal + sublime). You check the git status and pull in potential new changes mate on a remote directory. To be safe, it’s best to create a new branch, to not interfere with the master. When your changes are implemented you add these to the next commitment package _(git add)_, commit the package _(git commit -m “ “)_ and push the commit to the remote directory _(git push origin branch-name)._

Stage 2: On your remote GitHub account, you do a pull request (green button), make sure you pull them in on the respective branch. Later on you (or a colleague) review the code, and when safe, merge the changes on the GitHub master (or parent branch). If the changes are merged, it’s a good practice to delete the branch on GitHub.

Stage 3: Back on the local directory, you now have to be in sync again with the merged setup of GitHub. You navigate to the master branch and do a pull on the GitHub directory. This pull can be split in a “fetch” command and a “merge” command.

**Write a handy cheatsheet of the commands you need to commit your changes.**

 

**Step**

 

**Command**

 

**Reason**

 

**1**

 

git status master

 

Check the status on the master

 

**2**

 

git pull master

 

Pull in any new changes that may be waiting for you

 

**3**

 

git checkout -b branch-name

 

Create new branch to work on

 

**4**

 

Work Work Work

 

**5**

 

git add

 

Add work to next commitment package

 

**6**

 

git commit -m “ “

OR 

git commit -v

 

Commit changes with the respective update description

 

**7**

 

git push origin branch-name

 

Upload the whole branch to GitHub. Don’t push to Master, but keep the branch separated.

 

**8**

 

Pull Request via green button on GitHub

 

Pull in new changes

 

**9**

 

Merge in the new changes on GitHub

 

**10**

 

Delete branch on GitHub

 

Once the branch has been merged in, it becomes useless

 

**11**

 

git checkout master

 

Navigate to master

 

**12**

 

git fetch origin master

 

**git pull** fetches changes from the remote repository and merges them.  You can also fetch and merge separately if you prefer. If it says it was already up to date, you had no changes to pull. If it pulled them, you should now see all of the changes that were on the remote repository on yours.

 

**13**

 

git merge origin master

**What is a pull request and how do you create and merge one?**

A pull request will check with other directories if there is a newer version committed (and pushed). You can initiate a pull request on GitHub to obtain changes from the local directory or vice versa. It is a manual process with several verification steps to increase the awareness of colleagues and allow code review before implementing new code.

A pull request can be generated both in the terminal as on GitHub

Terminal: git pull master

GitHub: Green button stating “pull request”

**Why are pull requests preferred when working with teams?**

Pull requests provide additional redundancy when integrating new code in other more solid code. Colleagues can review the code on bugs, interference risks etc before implementing them. They have to explicitly pull in new code to get their attention on it (and not have it passing in the background)