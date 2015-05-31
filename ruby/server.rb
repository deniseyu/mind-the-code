require 'sinatra'

class MindTheCodeApp < Sinatra::Application

  set :partial_template_engine, :erb
  set :static, true

  # Want your views to be served from a different folder?
  # see http://www.sinatrarb.com/configuration.html
  # And an example:
  # set :views, Proc.new { File.join(root, "some-other-folder") }

  # CONSTANT = ConstantObject.new

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
