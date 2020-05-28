class GamesController < ApplicationController

  def cake1
    cake=Game.find_by(params[:one])
    cake.one+=10
    cake.save
    redirect_to games_new_path
  end  
  
  def cake2
    cake=Game.find_by(params[:one])
    cake.one-=10
    cake.save
    redirect_to games_new_path
  end  
  
  def cake3
    cake=Game.find_by(params[:two])
    cake.two+=10
    cake.save
    redirect_to games_new_path
  end  
  
  def cake4
    cake=Game.find_by(params[:two])
    cake.two-=10
    cake.save
    redirect_to games_new_path
  end  
  
  def new
    cake=Game.find_by(params[:one])
    @chart = {"青" =>cake.one, "赤" => cake.two, "黄色"=> cake.three, "緑" => cake.four,"紫"=>cake.five}
    if cake.one==80 && cake.two==80
      cake.one=10
      cake.two=20
      cake.save
      redirect_to games_ok_path
    end


  end
end
