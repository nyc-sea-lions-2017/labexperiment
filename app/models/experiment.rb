class Experiment < ApplicationRecord
  belongs_to :proposal
  belongs_to :experimenter, class_name: :User
  has_many :procedures
  has_many :comments, as: :commentable
  has_many :observations, as: :observable
end
