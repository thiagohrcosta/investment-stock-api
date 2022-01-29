require 'rails_helper'

RSpec.describe Product, type: :model do
  
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:min_price) }
    it { should validate_presence_of(:max_price) }
    it { should validate_presence_of(:percent_change) }
  end

end
