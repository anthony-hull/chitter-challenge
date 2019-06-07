require 'sinatra/activerecord'
class Chitter < Sinatra::Base

  current_dir = Dir.pwd
  Dir["#{current_dir}/models/*.rb"].each { |file| require file }

  get '/' do
    erb :index
  end


  get '/articles' do
    @peeps = Peep.all
  end

  get '/articles/:id' do
    @peep = Peep.find(params[:id])
  end

  put '/articles/:id/create' do
    @peep = Peep.create(params[:peep])
  end

  delete '/articles/:id' do
    Peep.destroy(params[:id])
  end

end