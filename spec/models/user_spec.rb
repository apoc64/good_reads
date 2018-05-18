require 'rails_helper'

describe User, type: :model do

  describe 'validattions' do
    it {should validate_presence_of(:name)}
  end

  describe 'relationships' do
    it {should have_many(:reviews)}
  end
end
