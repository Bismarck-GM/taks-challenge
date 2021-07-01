require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'associations' do
    it { should belong_to(:template).optional }
    it { should belong_to(:project).optional }
  end
end