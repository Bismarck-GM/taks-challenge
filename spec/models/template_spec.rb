require 'rails_helper'

RSpec.describe Template, type: :model do
  describe 'associations' do
    it { should have_many(:tasks).dependent(:destroy) }
    it { should accept_nested_attributes_for(:tasks) }
  end
end
