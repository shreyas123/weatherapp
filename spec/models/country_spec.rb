require 'rails_helper'

RSpec.describe Country, type: :model do
  describe 'associations' do
    it { is_expected.to have_many :cities }
  end
end
