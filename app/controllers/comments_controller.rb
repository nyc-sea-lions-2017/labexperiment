class CommentsController < ApplicationController

  def create
    @comment = Comment.new(body: params[:comment][:body], user_id: current_user.id, commentable_id: params[:comment][:commentable_id], commentable_type: params[:comment][:commentable_type] )
    if @comment.save
      redirect_to request.referrer
    else
      @errors = @comment.errors.full_messages

      render @errors
    end
  end

end
