class PagesController < ApplicationController
  def index
  end  

  def mypage
    @mypage=User.find_by(id: params[:id])
    @chart=[["不正解",@mypage.all_answer-@mypage.correct_answer],["正解",@mypage.correct_answer]]
  end  
  
end
