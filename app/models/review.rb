class Review < ApplicationRecord
  validates_presence_of :text, :rating
  belongs_to :user
  belongs_to :book
end
