require 'rubygems'
require 'sinatra'
require 'lib/helpers'
require 'lib/string'

include Guides::Versions
helpers Sinatra::Partials

get '/' do
  erb :index
end

available_versions.each do |version|
  
  version.actionize!
  
  get version.slashize do
    File.read(File.join("public", version, "index.html"))
  end
  
  get version do
    redirect version.slashize
  end
end

['/[1-9].[0-9]/?', '/[1-9].[0-9].[0-9]/?'].each do |version_pattern|
  get version_pattern do
    erb :no_guides
  end
end

not_found do
  erb :not_found
end