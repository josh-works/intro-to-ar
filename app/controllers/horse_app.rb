class HorseApp < Sinatra::Base
  get '/' do
    erb :"home/index"
  end

  get '/climbing_gyms' do
    @climbing_gyms = ClimbingGym.all
    erb:"climbing_gyms/index"
  end

  
end
