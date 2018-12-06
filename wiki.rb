require 'sinatra'

set :bind, "0.0.0.0"

def page_content(title)
  File.read("pages/#{title}.txt")
rescue Errno::ENOET
  return nil
end

get "/" do
  erb :welcome
end

get "/:title" do
  page_content(params[:title])
end
