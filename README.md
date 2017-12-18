# github notes

just a place to dump my notes on how to do various things


Initial setup of SSH:  https://help.github.com/articles/connecting-to-github-with-ssh/


[How to add an existing projec to github from the commandline](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/):

start with a NEW and EMPTY repo

``` shell
git init
git add .
git commit --author "First Last <generic@email.com>" -m "First commit"
```
Note that I had to add my email as it was not autodetected correctly
grab the ssh location from the repo
``` shell
git remote add origin git@github.com:myname/some_repo.git
git push -u origin master
```
after this `git push` is all you need (but the script does other useful stuff too)


https://www.gitignore.io is a good (quick) way to generate the `.gitignore` file
