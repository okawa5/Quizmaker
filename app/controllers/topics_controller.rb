class TopicsController < ApplicationController
  def index
    @topics=Topic.all  
    
  end  
  
  def new
    @topic=Topic.new
  end
  
  def create
    @topic=current_user.topics.new(topic_params)
    
    if @topic.save
      redirect_to root_path,success: "投稿に成功しました"
    else
      flash.now[:danger]="投稿に失敗しました"
      render :new
    end
  end
  
  def answer
  end  

  private
    def topic_params
      params.require(:topic).permit(:question,:choice1,:choice2,:choice3,:choice4,:answer,:explanation)
    end

end
