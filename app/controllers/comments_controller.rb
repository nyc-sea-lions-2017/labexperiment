class CommentsController < ApplicationController

  def create
  @comment = Comment.new(body: params[:body], commenter_id: current_user.id, commentable_id: params[:commentable_id], commentable_type: params[:commentable_type] )
  if @comment.save
    redirect_to "/users/#{@proposal.proposer_id}/proposals/#{@proposal.id}"
  else
    @errors = @comment.errors.full_messages
    render "proposal/#{proposal.id}"
  end
  end


end
