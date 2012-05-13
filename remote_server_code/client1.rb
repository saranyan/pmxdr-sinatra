require 'rubygems'
require 'bundler'
require 'json'

Bundler.require
#x-frame-options allow sinatra

configure do
  set :protection, :except => :frame_options
  
end


helpers do
  def request_headers
    env.inject({}){|acc, (k,v)| acc[$1] = v if k =~ /^http_(.*)/i; acc}
  end
  
  include Rack::Utils
  alias_method :h, :escape
end

get '/' do
  p "hello"
end

post '/api/token' do
  p "hello posted"
  content_type :json
    { :token => '9238928fkjkjkdjfser'}.to_json
end

get '/pmxdr/api' do
  p "got a get on pmxdr/api"
  # # {:test => "foo"}
  erb :pmxdr
  #send_file File.join('public', 'pmxdr-host.js')
end

# get '/pmxdr/pmxdr-host.js' do
#   File.read('pmxdr-host.js')
# end