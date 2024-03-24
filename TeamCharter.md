# Team Purpose
Create a RESTful Web API to fulfill the Enterprise Java Course Competency as well as provide a portfolio piece

# Ground Rules for Interaction
- Treat everyone equally and with respect.
- Communicate openly / give constructive feedback.
- Celebrate accomplishments.
- Address conflict as soon as possible.
- Complete tasks assigned to us.
- Meet our deadlines.

# Communication Policies
- Team meetings will be coordinated via Slack
- Team meetings will occur on Microsoft Teams
  - At least 1/week meeting to coordinate Team tasks and monitor project progress
- If a team member is unresponsive on Slack for 5 days, the course instructor will be contacted to check in on the team member

# Git Workflow and Branching Policy

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

