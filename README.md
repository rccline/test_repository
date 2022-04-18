# test_repository
Physalia-courses Reproducibility 2022-03-16
Instructor:  Pao Corrales  

#### This "test_repository" is being used by the author, rccline@fastmail.fm, to practice GitHub commands.  

<br> 

#### 1. Undo Changes (git Checkout, git Revert and git Reset)
Nathan's YouTube.  Click [here](https://www.youtube.com/watch?v=UmE0uf5UMzA&t=229) 

#### 2. Rebase basics from *Team Programmer* on Youtube. `git rebase origin/master`   

[Team Programmer](https://www.youtube.com/watch?v=gkGZzd9c4ow&t=195s) Git rebase basics. 
- This is complicated.  
- `git fetch origin main` to download the main branch with latests commits into your local system.   
- First Rebase on your local system.  
- `git rebase origin/main` 

#### 3. Branching for **`feature development`**.  
  - `git checkout -b hotfix-1`  
    - create a branch named hotfix-1 and switch to the new branch.
  - Branch types:  features, issues, bug_fix, hotfix-1  
  - Strategies to remember what features and branch I am working with.  
  - **Strategy One**:  Name each brach for the file being worked on.
    - E.g.  Branch name is:  `feature/filename`  
    - E.g. `features/new-file2` while developing file named:  *new-file2.R*
  - **Strategy Two**: I am exploring is `creating a folder for each feature`, or at least for the features in development.  
    - By using separate folders for feature development, I know the main or master branch is clean.  
  - Useful shortcut to change branches:  `git checkout -`
  
#### 4. Merging  
  - If you want to merge into the master:  First be sure you are in the master branch.  
  - `git merge *branchtomerge*`  
  - Follow merge with *alias* `git graph`  or `git log --oneline`  
  
#### 5.  Conflict resolution  (C.f. Nathan Williams)
  - If you have a file that has changed in both branches, you will have a conflict.  
  - When this type of conflict arises, the offending document will have the merge conflicts displayed.   - You can correct the file and save.  
  - Add the changed file to staging area and `git commit` with out the -m "message".  It will give you a default message.   
  
#### 6. Create a branch using [git stash](https://www.golinuxcloud.com/git-stash-explained-in-detail-with-examples/)  ^[A stash is simply temporary storage in git for the changes that you make in your active directory before committing them. It is most helpful if you are running a series of tests on your code and you are not sure which one will work out. You can always store such tests in a stash to later review and pick what you feel comfortable applying in your project.]  

`git stash list [<options>]`  
`git stash show [<stash>]`  
`git stash drop [-q|--quiet] [<stash>]`  
`git stash ( pop | apply ) [--index] [-q|--quiet] [<stash>]`  
`git stash branch <branchname> [<stash>]`  
`git stash [save [-p|--patch] [-k|--[no-]keep-index] [-q|--quiet] [-u|--include-untracked] [-a|--all] [<message>]]`  
`git stash clear`  
`git stash create [<message>]`  
`git stash store [-m|--message <message>] [-q|--quiet] <commit>`  

Your changes before stashing  
  - git add .  

Store the changes (stash)  
  - git stash save "Saving changes from edit this file" 

List stashed changes  
 - git stash list 

At this stage your local repo is clean
  - git status   

To undo stash by popping the stash  
  - git stash pop   

Verify if the stash was popped    
  - git stash list 

Verify the pending changes before stash was done  
  - git status  


  
