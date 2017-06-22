class ObservationsController < ApplicationController

  def new
    @observable = Observation.new
  end

  def create
      @observable = Observation.new(body: params[:observable][:body], user_id: current_user.id, observable_id: params[:observable][:observable_id], observable_type: params[:observable][:observable_type] )
      model_class = const_get(params[:observable][:observable_type])
     model_class.find_by(name: params[:observable][:my_attr])
  if @observable.save

    redirect_to observation_path(@observable)
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
