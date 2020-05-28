class GamesController < ApplicationController
  def cake
    redirect_to games_new_path
  end  
  
  def new
    @cake=Game.all
    @chart = {"太郎" =>@cake.one, "次郎" => Game.select(:two), "三郎"=> Game.select(:three), "四郎" => Game.select(:four),"五郎"=>Game.select(:five)}
  end
end
