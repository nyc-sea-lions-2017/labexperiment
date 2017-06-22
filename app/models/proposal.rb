class Proposal < ApplicationRecord
  # belongs_to :user
  validates :name, :state, :summary, :hypothesis, :proposer_id, presence: true
  has_many :experiments, foreign_key: :experimenter_id 
end
