require 'sinatra'

set :bind, "0.0.0.0"

get "/" do
  "<h2> Welcome to Our Wiki </h2>"
end
