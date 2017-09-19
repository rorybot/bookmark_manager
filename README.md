I'm having an issue where I get the following error when running ruby /app/app.rb :


<!-- → ruby ./app/app.rb
/Users/MacBook/.rvm/rubies/ruby-2.4.0/lib/ruby/site_ruby/2.4.0/rubygems/specification.rb:2290:in `raise_if_conflicts': Unable to activate dm-serializer-1.2.2, because json-2.0.2 conflicts with json (~> 1.6) (Gem::ConflictError)
	from /Users/MacBook/.rvm/rubies/ruby-2.4.0/lib/ruby/site_ruby/2.4.0/rubygems/specification.rb:1410:in `activate'
	from /Users/MacBook/.rvm/rubies/ruby-2.4.0/lib/ruby/site_ruby/2.4.0/rubygems/specification.rb:1444:in `block in activate_dependencies'
	from /Users/MacBook/.rvm/rubies/ruby-2.4.0/lib/ruby/site_ruby/2.4.0/rubygems/specification.rb:1430:in `each'
	from /Users/MacBook/.rvm/rubies/ruby-2.4.0/lib/ruby/site_ruby/2.4.0/rubygems/specification.rb:1430:in `activate_dependencies'
	from /Users/MacBook/.rvm/rubies/ruby-2.4.0/lib/ruby/site_ruby/2.4.0/rubygems/specification.rb:1412:in `activate'
	from /Users/MacBook/.rvm/rubies/ruby-2.4.0/lib/ruby/site_ruby/2.4.0/rubygems.rb:220:in `rescue in try_activate'
	from /Users/MacBook/.rvm/rubies/ruby-2.4.0/lib/ruby/site_ruby/2.4.0/rubygems.rb:213:in `try_activate'
	from /Users/MacBook/.rvm/rubies/ruby-2.4.0/lib/ruby/site_ruby/2.4.0/rubygems/core_ext/kernel_require.rb:126:in `rescue in require'
	from /Users/MacBook/.rvm/rubies/ruby-2.4.0/lib/ruby/site_ruby/2.4.0/rubygems/core_ext/kernel_require.rb:40:in `require'
	from /Users/MacBook/Projects/bookmark_manager/app/models/link.rb:1:in `<top (required)>'
	from ./app/app.rb:2:in `require_relative'
	from ./app/app.rb:2:in `<main>' -->


I've setup everything so it should only use json 1.8.6. I've uninstalled any other gem of json. I've tried deleting gemfile.lock and reinstalling. I've tried deleting Gemfile and re-requiring line-by-line. I've tried re-doing bundle in a bunch of different variations of requiring and not requiring versions or gemfiles, both before and after uninstalling or re-installing. Every time I still get this exact same error however.


I'm also having an issue where I tried to create "database_setup" file in models, and just require it into link.rb, but it throws up an error about how it doesn't know about method 'include?' But that's less important.
