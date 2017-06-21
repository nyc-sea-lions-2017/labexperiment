class Proposal < ApplicationRecord

  has_many :comments, as: :commentable
  belongs_to :proposer, class_name: :User
  validates :name, :state, :summary, :hypothesis, :proposer_id, presence: true

end
