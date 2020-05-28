class TopicsController < ApplicationController
  def index
    @topics=Topic.page(params[:page]).per(5)
    
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

  def edit
    @topic = Topic.find_by(id: params[:id])
  end
  
  def update
    @topic = Topic.find_by(id: params[:id])
    
    if @topic.update(question: params[:question],choice1: params[:choice1],choice2: params[:choice2],choice3: params[:choice3],choice4: params[:choice4],explanation: params[:explanation])  
      redirect_to root_path,success: "編集しました"
    else
      redirect_to root_path,danger: "編集に失敗しました"
    end
  end

  def destroy
    @topic= Topic.find_by(id: params[:id])
    @topic.destroy
     redirect_to root_path
  end
  

  
  
  
  


  private
    def topic_params
      params.require(:topic).permit(:question,:choice1,:choice2,:choice3,:choice4,:answer,:explanation)
    end


end
