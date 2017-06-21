class Proposal < ApplicationRecord
  has_many :comments, as: :commentable
  belongs_to :user
  validates :name, :state, :summary, :hypothesis, presence: true
end
