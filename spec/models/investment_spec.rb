require 'rails_helper'

RSpec.describe Investment, type: :model do
  
  context 'validations' do
    it { should validate_presence_of(:opportunity) }
  end

end
