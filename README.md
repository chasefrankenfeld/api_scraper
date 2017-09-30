# README -  Setup Instructions

Install Xcode, Homebrew, Git, RVM, Ruby & Rails on Mac OS X using the below instructions (assuming you are using a mac)

https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/

OR

1. Install Xcode

$ xcode-select --install

2. Install Homebrew

$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

3. Update brew and install git

$ brew update
$ brew install git

4. Install the ruby virtual environment

$ curl -L https://get.rvm.io | bash -s stable

5. Check your ruby version

$ ruby -v

5. Install ruby version 2.4.0 with rvm

$ rvm install 2.4.0

6. To see all ruby versions

$ rvm list rubies

7. Create a new gemset using ruby version 2.4.0 called kogan_challenge

$ rvm use 2.4.0@kogan_challenge --create

8. List the gemset being used

$ rvm gemset list

RUNNING THE PROGRAM

9. Copy the project folder to your designated directory

10. Ensure you are using the relevant gemset from above

$ rvm gemset list
$ rvm gemset use kogan_challenge

11. cd kogan_challenge_ruby_on_rails
