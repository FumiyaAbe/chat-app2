class MessagesController < ApplicationController
  def index
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end
