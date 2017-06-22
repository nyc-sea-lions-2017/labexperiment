class ProposalsController < ApplicationController
  def index
    @proposals = Proposal.all
  end

  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new(post_params)
    @proposal.proposer_id = current_user.id
    @proposal.state = "open"
    if @proposal.save
      redirect_to proposal_path(@proposal)
    else
      @errors = @proposal.errors.full_messages
      render :new
    end
  end

  def show
    @proposal = Proposal.find(params[:id])
  end

  private

  def post_params
    params.require(:proposal).permit(:name, :summary, :state, :hypothesis, :proposer_id, :id)
  end
end
