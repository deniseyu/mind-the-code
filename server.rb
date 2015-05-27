require 'sinatra'

class MindTheCodeApp < Sinatra::Application

  get '/' do
    File.read(File.join('public', 'index.html'))
  end

end
