class GamesController < ApplicationController

  def zyanken
  end
   
  def zyankenA
    @hand=rand(1..3)
    
    if params[:your_hand].to_i==@hand
      @kekka="あいこ！！"
    elsif params[:your_hand].to_i==1 && @hand==2
      @kekka="You Win!!"
    elsif params[:your_hand].to_i==1 && @hand==3
      @kekka="You Lose!!"
    elsif params[:your_hand].to_i==2 && @hand==3
      @kekka="You Win!!"
    elsif params[:your_hand].to_i==2 && @hand==1
      @kekka="You Lose!!"
    elsif params[:your_hand].to_i==3 && @hand==1
      @kekka="You Win!!"
    elsif params[:your_hand].to_i==3 && @hand==2
      @kekka="You Lose!!"
    end  
  
    if @hand==1
        @aitenote="グー"
    elsif @hand==2
      @aitenote="チョキ"
    elsif @hand==3
      @aitenote="パー"
    end
    
    if params[:your_hand].to_i==1
        @anatanote="グー"
    elsif params[:your_hand].to_i==2
      @anatanote="チョキ"
    elsif params[:your_hand].to_i==3
      @anatanote="パー"
    end   


  end
end  
  