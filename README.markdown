Rails Guides
============

This is the source code of [railsguides.heroku.com](http://railsguides.heroku.com), [rorguides.heroku.com](http://rorguides.heroku.com) and [guides.heroku.com](http://guides.heroku.com).

It's a [Sinatra](http://www.sinatrarb.com) application that allows us to browse and download different versions of the Rails Guides.

Installation
------------

If you do have Bundler:

    bundle install

If you don't:

	sudo gem install sinatra
	
Running
-------

    ruby guides.rb

	ruby guides.rb -p any_available_port


Browsing
--------

Point your browser to [http://localhost:4567](http://localhost:4567)