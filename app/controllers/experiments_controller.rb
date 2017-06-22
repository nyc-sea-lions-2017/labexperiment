class ExperimentsController < ApplicationController
  def new
    @experiment = Experiment.new
  end

  def show
    @experiment = Experiment.find(params[:id])
  end


  def create
    @experiment = Experiment.new(post_params)
    @experiment.experimenter_id = current_user.id
    @experiment.proposal_id = params[:proposal_id]
    if @experiment.save
      redirect_to "/proposals/#{@experiment.proposal.id}/experiments/#{@experiment.id}"
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:experiment).permit(:results, :conclusions)
  end
end
