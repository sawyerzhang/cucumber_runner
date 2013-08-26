Cucumber_runner
================

I use cucumber as my main BDD tools on a daily base, no matter on mobile or web. it ease my life very much.
Running tests for all features is as simple as inputting a single line, however under development phrase,
especially when I develop scenarios, I need run individual back and forth, so I have to use up and down arrow
to get correct commands. Programmers are lazy :), so I began to think, what if there's a list of my scenarios,
and I just can choose any scenarios to run.

Then I wrote cucumber_runner, it's quite simple, it add a formatter to list all features names, categorised by
feature names, and give each a number, then you choose the number to run.


Install
========

Add this line to your application's Gemfile:
 gem 'cucumber_runner'


Or install it yourself as:

    $ gem install cucumber_runner


Features
========

You can use it with zeus or not by providing --user_zeus.

You can pass environment variables as usual.

After running, you can input 's' to stop or simple Ctrl+c, you
can input 'l' to print the name list again.


Contributions
=============
Any suggestions, bug reports or feature requests are welcome.
Any pull requests are very much appreciated.


License
============
MIT License