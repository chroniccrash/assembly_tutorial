# Getting Start

# Tools
-   Run this:
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt install nasm -y
    sudo apt install gcc -y
    sudo apt install g++ -y
    sudo apt install gdb -y
    sudo apt install code -y
    sudo apt install git -y
    sudo reboot

# GitHub
-   All exercises will require the use of github.
-   Start off by downloading the git client.  If you're on windows (which we're not) you can google the git windows client at git-scm.com.  For linux, you can use apt or yum.  For this particular OS just run `sudo apt install git`.  Say yes, let it install, happy day.
-   Next you need to go to github.com and setup an account.
-   Now you need the keys to the kingdom.  Do not share this file with anyone.  Period.  It's your private key and they can masquerade as you (on github or any other platform you use the key for).  Follow the following commands:
    1. `mkdir ~/.ssh`
    2. `cd ~/.ssh`
    3. `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`
    4. This generates a id_rsa (your private key...protect at all costs!!) and id_rsa.pub (your public key...you can give this to everyone and their mother)
    5. Let's change the permissions to protect your id_rsa key so you and only you (or someone who steals your password) can have access to it.
    6. `chmod 400 id_rsa`
    7. Because I sometimes use other keys, I like to set this one aside as special.
    8. `mv id_rsa github.key`
    9. `mv id_rsa github.pub`
    10. Now, go to your github.com account settings (https://github.com/settings/profile)
    11. Click on SSH and GPG keys
    12. Click on New SSH key.
    13. Using gedit or whatever text app, open the github.pub file and put that text in the github.com website and give any ol' title to the key.
    14. Now you need to setup your system to use the github.key when you attempt ssh connections.
    15. You need to make the ssh-agent run in the background.
    16. `eval $(ssh-agent -s)`
    17. Now it is running the background (lookup starting it up by default on your own.  Every time you open a terminal you have to run this if you want to use github.com from the command line.  Better security this way, find a lazier way on your own).
    18. Add the id_rsa.key to the agent.
    19. `ssh-add ~/.ssh/id_rsa`
    20. It will ask for a password, give it the one you used when you first made it.
    21. Next test your connection
    22. `ssh git@github.com`
    23. It should return `Hi chroniccrash! You've successfully authenticated, but GitHub does not provide shell access.`.
