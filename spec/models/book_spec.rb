require 'rails_helper'

describe Book, type: :model do

  describe 'validattions' do
    it {should validate_presence_of(:title)}
  end

  describe 'relationships' do
    it {should have_many(:reviews)}
  end
end
