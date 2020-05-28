class ChecksController < ApplicationController

  def new
   
  end  
  
  def answer
   current_user.all_answer+=1
   current_user.save

   if  params[:your_answer]==params[:answer]
    current_user.correct_answer+=1
    current_user.save
   end
  
  
  end

end