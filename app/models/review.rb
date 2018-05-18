class Review < ApplicationRecord
  validates_presence_of :text, :rating

end
