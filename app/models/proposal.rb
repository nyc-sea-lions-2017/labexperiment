class Proposal < ApplicationRecord
  # belongs_to :user
  validates :name, :state, :summary, :hypothesis, presence: true
end
