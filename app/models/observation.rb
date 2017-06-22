class Observation < ApplicationRecord
  belongs_to :user
  belongs_to :commentable, polymorphic: true
end
