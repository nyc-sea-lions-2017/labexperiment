class ProceduresController < ApplicationController
  def new
    @procedure = Procedure.new
  end

  def create

    @procedure = Procedure.new(post_params)
    @procedure.experiment_id = params[:experiment_id]
    if @procedure.save
      @experiment = @procedure.experiment
      @proposal = @experiment.proposal
      
      redirect_to proposal_experiment_path(@proposal,@experiment)
    else
      @errors = @procedure.errors.full_messages
      render :new
    end
  end

  private

  def post_params
    params.require(:procedure).permit(:body, :experiment_id)
  end

end
