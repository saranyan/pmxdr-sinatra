require 'rubygems'
require 'bundler'
require 'json'

Bundler.require
# set :protection, :except => :frame_options


helpers do
  def request_headers
    env.inject({}){|acc, (k,v)| acc[$1] = v if k =~ /^http_(.*)/i; acc}
  end
  
  include Rack::Utils
  alias_method :h, :escape
end


get '/' do
  erb :index
end
