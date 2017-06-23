class ObservationsController < ApplicationController

  def new
    @observation = Observation.new
  end

  def create
      @observation = Observation.new(body: params[:observation][:body], user_id: current_user.id, observable_id: params[:observation][:observable_id], observable_type: params[:observation][:observable_type] )

     model_class = params[:observation][:observable_type].constantize.all
     object = model_class.find(params[:observation][:observable_id])

  if @observation.save

    redirect_to observation_path(@observation)
  else
    @errors = @observation.errors.full_messages

    render @errors
  end
  end

  def show
    @comment = Comment.new
    @observation = Observation.find(params[:id])
  end

  def edit
  end

  def delete
  end
end
