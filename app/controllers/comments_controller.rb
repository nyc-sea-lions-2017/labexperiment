class CommentsController < ApplicationController

  def create
  @comment = Comment.new(body: params[:comment][:body], user_id: current_user.id, commentable_id: params[:comment][:commentable_id], commentable_type: params[:comment][:commentable_type] )
  if @comment.save

    redirect_back(fallback_location: root_path)
  else
    @errors = @comment.errors.full_messages

    render @errors
  end
  end


   def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

end
