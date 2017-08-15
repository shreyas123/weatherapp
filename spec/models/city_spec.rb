require 'rails_helper'

RSpec.describe City, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :country }
  end
end
