class Proposal < ApplicationRecord
  # belongs_to :user
  validates :name, :state, :summary, :hypothesis, :proposer_id, presence: true
end
