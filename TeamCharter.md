# Git Workflow and Branching Policy

## Communication Rules

In order to push any changes to the main branch. The changes 
need to go through a code review with other member to move changes to 
the main branch or to do a Pull Request.

## Branching Rules

As this project is worked by several user at the same time, 
different branches were created with the name of each collaborator,
that way each collaborator can work on their own part independently.

### Steps to follow when working on your own branch

1. To move to a different branch
``git checkout <your_branch>``
2. Make all your changes
3. Once your changes are ready
``git add .`` plus ``git commit -m <The message for the commit>``
4. Push your change to your branch in your GitHub repository
``git push origin <your_branch>``
5. Go to GitHub repository
6. Confirm your changes were pushed correctly to your branch in GitHub
6. Go back to the IDE
7. Return to the main branch
``git checkout main``
8. Do a ``git fetch origin``
9. Do a ``git merge <your_branch>`` to pull changes from your branch to the main branch
10. Before doing a push, do a ``git pull origin main`` as a good practice to avoid conflicts
11. Do a push
``git push origin main``
12. Go to GitHub repository and confirm the changes were pushed to the main branch


## What if a collaborator stop working on the project

If for some reason, any of the collaborators stop working on the project for any reason 
or the collaborator is unable to be contacted in a period more of 1 week. The 
others collaborators can go to the collaborator branch and do a merge to continue working.