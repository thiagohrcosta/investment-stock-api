require 'rails_helper'

RSpec.describe Opportunity, type: :model do
  
  context 'validations' do
    it { should validate_presence_of(:product) }
    it { should validate_presence_of(:amount) }
  end
  
end
