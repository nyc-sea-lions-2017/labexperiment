class Observation < ApplicationRecord
  belongs_to :user
  belongs_to :observable, polymorphic: true
  has_many :comments, as: :commentable
end
