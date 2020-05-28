require_relative 'config/environment'

class App < Sinatra::Base

    configure do
    enable :sessions
    set :session_secret, "6a28b2e28c06a72d8b9122f8c02348354da33b8bc9a0ce1249f1ddbcff0868e67c73ca5332184a187f8a8abefa11b403920f985531971d4f86e350ea4ba6e4c9"
  end

  get "/" do
    erb :index
  end

  post "/checkout" do
    @session = session
    @session[:item] = params[:item]
  end
end
