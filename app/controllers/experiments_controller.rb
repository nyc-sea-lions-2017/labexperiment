class ExperimentsController < ApplicationController
  def new
    @experiment = Experiment.new
  end

  def show
    @comment = Comment.new
    @experiment = Experiment.find(params[:id])
  end


  def create
    @experiment = Experiment.new
    @experiment.experimenter_id = current_user.id
    @experiment.proposal_id = params[:proposal_id]
    @experiment.state = "open"
    if @experiment.save
      redirect_to "/experiments/#{@experiment.id}/procedures/new"
    else
      render 'new'
    end
  end

  private

  def post_params
  end
end
