class ObservationsController < ApplicationController

  def new
    @observation = Observation.new
  end

  def create
      @observation = Observation.new(body: params[:observation][:body], user_id: current_user.id, observationable_id: params[:observation][:observationable_id], observationable_type: params[:observation][:observationable_type] )
  if @observation.save

    redirect_to ""
  else
    @errors = @observation.errors.full_messages

    render @errors
  end
  end

  def show
    @observation = Observation.find(params[:id])
  end

  def edit
  end

  def delete
  end
end
