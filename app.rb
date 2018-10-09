require_relative 'config/environment'

class App < Sinatra::Base

  #
  # def page_content(name, breed)
  #   File.read("pages/#{name}.txt")
  # rescue Errno::ENOENT
  #   return nil
  # end

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @name = params['name']
    @age = params['age']
    @breed = params['breed']
    erb :display_puppy
  end

  post '/create' do
    params.inspect
    # puppy = Puppy.new(@name, @breed, @age)
    @content =  Puppy.new(params[:name], params[:breed], params[:age])
    erb :display, locals: { msg: @content }
    # save_content(params["name"],  params["content"])
    # redirect "/#{params["name"]}"
    # erb :display_puppy
  end

end
