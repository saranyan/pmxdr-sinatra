pmxdr-sinatra
=============

Cross domain API call example using Ruby (Sinatra) and PMXDR JS (https://github.com/eligrey/pmxdr)

The problem
=====

You want to make API calls from remote server using cross domain script calls. We use pxdm, a cross domain XHR javascript library that uses the HTML5 postMessage API to make requests.

The demo
=====

1. Add an entry to your /etc/hsots file -> 127.0.0.1 mylocal.name
2. Go to the remove_server directory and run
	
	shotgun client1.rb
	
	This will start a server on port 9393. If you don't have shotgun installed (you should), get it by gem install shotgun.
3. Go to the client_code directory
	
	shotgun client1.rb -p 9494
	
	This will start a server on port 9494
4. Navigate to localhost:9494. You will see a message coming from mylocal.name (the 9393 server) with a fake api token. This is the result of a call made on http://mylocal.name:9393/api/token

The details
===

Check this blog post http://dev.saranyan.com/cross-domain-api-calls-using-sinatra-pmxdr