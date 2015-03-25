<a href="url"><img src="https://github.com/gamahead/fiveA4BP/blob/master/app/assets/images/5As-logo.jpg?raw=true" align="left" height="100" width="100" ></a></br></br></br></br>
# The Five A's For Blood Pressure

This is an application used for assessing participants from different medical departments. It consists of five modules (The 5 "A"s of blood pressure) that try to educate the participant on how to handle patients with blood pressure issues. 

### Mac Pro (Rettner Hall) Instructions
This part is for my own, personal use when working on the mac pro in Rettner Hall since I have to go through this journey every time

1) Install and configure homebrew
```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
```
(I may have had to install gpg from somewhere too, but brew may have taken care of that. Can't remember)

2) Install RVM with Ruby 1.9.3
```bash
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
$ \curl -sSL https://get.rvm.io | bash -s stable --ruby=1.9.3
$ source /Users/jrose15/.rvm/scripts/rvm
```
RVM should set ruby version to 1.9.3 after entering the fivea4bp folder automatically, which is amazing

3) Install [Postgres.app](http://postgresapp.com/)

4) Install pg gem (These two commands do the same thing two different ways it seems, and I'm not convinced they are both necessary. Try the second one only next time)
```bash
$ gem install pg -- --with-pg-config=/Applications/Postgres.app/Contents/Versions/9.4/bin
$ brew install postgresql
```

5) Install gems
```bash
$ bundle install
```

6) Then do all of the git stuff

7) Intall the [heroku toolbelt](https://toolbelt.heroku.com/)

8) Add heroku remote 
```bash
$ heroku git:remote -a fivea4bp
```