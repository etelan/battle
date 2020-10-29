# in app.rb

require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/turn'

class Battle < Sinatra::Base

  # Allows us to save between requests
  enable :sessions


  get '/' do
    erb :index
  end

  # ALERT HORRIBLE GLOBAL VARIABLE DETECTED
  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @@game = Game.new(player_1, player_2)
    redirect '/play'
  end

  # in app.rb
  get '/play' do
    @game = @@game
    erb :play
  end

  # in app.rb
  get '/results' do
    @game = @@game
    erb :results
  end

  get '/attack' do
    @target = params[:target]
    @game = @@game

    player = @game.target_calculator(@target)

    # Calculate before, after, change. And attack.
    @before = (player).hit_points
    @game.attack(player)
    @after = (player.hit_points)
    @amount = @before - @after

    erb :attack
  end

  get '/heal' do
    @target = params[:target]
    @game = @@game

    if @target == "p1"
      @game.heal(@game.player_1)
    elsif @target == "p2"
       @game.heal(@game.player_2)
    end

    erb :heal
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
