# Ruby Installation

Download or clone this repository:

```
git clone git@github.com:deniseyu/mind-the-code.git
cd mind-the-code/ruby
```

Make sure you have Ruby installed:

https://www.ruby-lang.org/en/downloads/

Run ```ruby -v``` in your Terminal to make sure that Ruby exists locally! You may have to restart your Terminal. (If it is successfully installed, it will tell you which version.)

Now run ```gem install bundler```. Bundler is a tool to help manage Ruby Gems, which are small libraries that can be ported onto any Ruby application to get additional functionality with ease.

Once you are in the mind-the-code directory, run

```
bundle install
```

This will install **[Sinatra](http://www.sinatrarb.com/)**, which is a small web framework commonly used for Ruby web applications.
Alongside other dependencies for the project, like debugging tools and database drivers.

You will also need to download and install [PostgreSQL](http://www.postgresql.org/download/)
which is the database that we'll be using in our app. Don't forget to create a development database:

```bash
$ createdb mind_the_code_development
```

Now, we need to start the local server:

```
rackup
```

If all went well, the output in your terminal will look something like:

```
[2015-05-27 19:54:58] INFO  WEBrick 1.3.1
[2015-05-27 19:54:58] INFO  ruby 1.9.3 (2014-11-13) [x86_64-darwin14.1.0]
[2015-05-27 19:54:58] INFO  WEBrick::HTTPServer#start: pid=38477 port=9292
```

This means that the server is alive and running on port 9292. Open a web browser and go to http://localhost:9292. Try changing the content of views/index.erb and refresh the page!
