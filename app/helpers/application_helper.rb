module ApplicationHelper

  def current_user
    @current_user ||=User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end  
    
  def user_name
    @user_name ||=User.find_by(name: session[:name])
  end   


end
