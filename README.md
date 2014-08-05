This is project made for internship program at Monterail company.
It's based on skeleton cloned from this github link: 

https://github.com/hussar-academy/challenge_app

In this "test" application I made every single exercise.

Application is fully operational online on heroku with
working redis server and sidekiq for background mailer.
Application is using Unicorn server.

http://pseudostackoverflow.herokuapp.com/

Feel free to test it.
================================
DEVELOPMENT INSTALLATION GUIDE:

IMPORTANT: In localhost-development mode this application can be run both with Unicorn and WEBrick servers.

LOCALHOST WITH UNICORN SERVER:

1.Turn on terminal and "cd" your way to folder where you want to copy this application.<br>
2.Inside terminal type "git clone git@github.com:BobcatMK/Challenge_application.git"<br>
3.Inside terminal type "cd Challenge_application"<br>
4.Now type "bundle install"<br>
5.Run "rake db:migrate"<br>
6.Go to config/initializers/redis.rb and COMMENT whole file like this:<br>

	#uri = URI.parse(ENV["REDISTOGO_URL"])
	
	#REDIS = Redis.new(:url => ENV["REDISTOGO_URL"])
	
7.In termial run command "rails generate figaro:install"<br>
8.Go to file /config/application.yml and open it<br>
  Inside file add environment variables for:<br>
  
	heroku_github_key: "HERE"
	heroku_github_secret: "HERE"
	gmail_user: "HERE"
	gmail_password: "HERE"
	
9.In terminal run: "gem install foreman" (DON'T INCLUDE IT IN GEMFILE!)<br>
10."foreman start"<br>

LOCALHOST WITH WEBrick SERVER:

1.Turn on terminal and "cd" your way to folder where you want to copy this application.<br>
2.Inside terminal type "git clone git@github.com:BobcatMK/Challenge_application.git"<br>
3.Inside terminal type "cd Challenge_application"<br>
4.Now type "bundle install"<br>
5.Run "rake db:migrate"<br>
6.Go to config/initializers/redis.rb and COMMENT whole file like this:<br>

	#uri = URI.parse(ENV["REDISTOGO_URL"])
	
	#REDIS = Redis.new(:url => ENV["REDISTOGO_URL"])
	
7.In termial run command "rails generate figaro:install"<br>
8.Go to file /config/application.yml and open it<br>
  Inside file add environment variables for:<br>
 
	heroku_github_key: "HERE"
	heroku_github_secret: "HERE"
	gmail_user: "HERE"
	gmail_password: "HERE"
	
9.Go to http://redis.io/ and install redis server.<br>
10.Open two new terminals and type "redis-server" - in first<br>
11.In second navigate to this application and type: "bundle exec sidekiq"<br>
12.Now go to your original terminal and run "rails s"



