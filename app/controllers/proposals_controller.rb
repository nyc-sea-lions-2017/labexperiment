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
    @experiment = Experiment.new
    @comment = Comment.new
  end

  def close
    @proposal = Proposal.find_by(id: params[:id])
    @proposal.state = "close"
    redirect_to @proposal
  end

  private

  def post_params
    params.require(:proposal).permit(:name, :summary, :state, :hypothesis, :proposer_id, :id, :commentable_id, :commentable_type, :user_id, :body)
  end
end
