require 'rails_helper'

RSpec.describe User, type: :model do
  
  context 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:encrypted_password) }
  end
end
