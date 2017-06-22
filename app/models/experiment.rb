class Experiment < ApplicationRecord
  belongs_to :proposal
  belongs_to :experimenter, class_name: :User
  has_many :comments, as: :commentable
end
