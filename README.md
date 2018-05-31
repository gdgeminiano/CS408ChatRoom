# README
Versions Used:
Ruby:   ruby 2.4.4p296 (2018-03-28 revision 63013) [x64-mingw32]
Rails:  Rails 5.2.0

Installing Ruby
1. Go to https://rubyinstaller.org/downloads/
2. Install the recommended ruby version with devkit for your system
    In this case it was: Ruby+Devkit 2.4.4-1 (x64)
3. Follow Installation Instructions
    a. Add ruby executables to your PATH
    b. Associate .rb and .rbw files with this Ruby installation
4. To check if ruby installed successfully run in command line:
    ruby -v

Installing Rails
1. Open command prompt anywhere
2. Run in command line:
    gem install rails

Setting up and running program
1. Go to Ruby directory
2. Create a new folder called rails
3. Go to rails directory
4. Unzip project folder in rails directory
5. Open command prompt in chat directory
6. Run in command line:
    bundle install
7. Run in command line:
    rails server
8. Wait for rails server to load
9. In web browser (Chrome recommended) go to:
    http://localhost:3000

Inside ChatRoom:
1. Sign up a new account with an email and password
    example:
      email: username@email.com
   password: password123
2. You are now in ChatRoom
3. To access two accounts at the same time on the same computer
    a. Open an incognito window in Chrome
    b. Go to:
        http://localhost:3000
    c. Sign up a new account
    d. Once in ChatRoom, feel free to chat away
