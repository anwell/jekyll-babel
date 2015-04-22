Less for Jekyll
===============

This gem provides a [Jekyll](http://github.com/jekyll/jekyll) converter for
ES6 files using [Babel](https://github.com/babel/ruby-babel-transpiler).

Basic Setup
-----------
Install the gem:

    [sudo] gem install jekyll-babel

In a plugin file within your Jekyll project's _plugins directory:

    # _plugins/my-plugin.rb
    require "jekyll-babel"

Alternatively, add a configuration option in `_config.yml`:

    gems: ['jekyll-babel']

Place `.js`, `.es6`, or `.es` files anywhere in your Jekyll project's directory.  These will be
converted to .js files with the same directory path and filename.

You must include two lines of triple dashes at the top of the file so Jekyll can detect it as an asset.


Credit
------
This gem was originally based on [this snippet](https://talk.jekyllrb.com/t/es6-babel-plugin/227) and the structure/readme borrowed from [jekyll-less](https://github.com/zroger/jekyll-less). First attempt at a ruby gem, so may need some fixing.