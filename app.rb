require 'sinatra/activerecord'
class Chitter < Sinatra::Base

  current_dir = Dir.pwd
  Dir["#{current_dir}/models/*.rb"].each { |file| require file }

  get '/' do
    redirect '/peeps'
  end


  get '/peeps' do
    @peeps = Peep.all
    erb :index
  end

  get '/peeps/add' do
    erb :add
  end

  get '/peeps/:id' do
    @peep = Peep.find(params[:id])
  end

  post '/peeps/add' do
    @peep = Peep.create(content: params[:peep])
    redirect '/peeps'
  end

  delete '/articles/:id' do
    Peep.destroy(params[:id])
  end

end