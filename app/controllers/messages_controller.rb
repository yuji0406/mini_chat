class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(message_params)
    # debugger
    @message.user_id = current_user.id
    @message.save
    flash[:success] = "投稿しました！"
    redirect_to '/messages'
  end
  
  private
    def message_params
      params.require(:message).permit(:message)
    end
end
