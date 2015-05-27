require 'sinatra'

class MindTheCodeApp < Sinatra::Application

  get '/' do
    erb :index
  end

  # ROUTING EXAMPLES
  # post '/' do
  #   @object = "an object that is accessible from the view"
  #   redirect '/' # redirects bounce to a GET route by default
  # end
  #
  # get '/custom_route/:name' do
  #   @dog = Dog.new(name: params[:some_param])
  #   erb :dog
  # end

end
