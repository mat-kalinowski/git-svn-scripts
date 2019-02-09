## Bash scripts
<br>

This repository contains a few bash scripts for version control utilities. **If the scripts dont want to execute, you have to make them executable** by
typing command  ```chmod u+x ./script_name.sh``` 
<br>

* **svn-stats** - script presenting statistics of a given svn repo for all contibutors. Number of commits, lines added and deleted.
* **git-stats** - script presenting statistics of a given branch of a git repo for all contibutors. Number of commits, lines added and deleted.
* **git-recovery** - script recovering all HEADS of lost branches. New branches called ```recovery<0/1/2...>``` are made, and they are pointing to lost HEADS.
