require "sinatra"
require "erb"

#module Gothonweb
    # Your code goes here...
    get '/' do
        greeting = "Hello, world!"
        erb :index, :locals => {:greeting => greeting}
    end

    get '/hello' do
        erb :hello_form
    end

    post '/hello' do
        greeting = "#{params[:greet] || "Hello"}, #{params[:name] || "Nobody"}"
        erb :index, :locals => {:greeting => greeting}
    end
#end
