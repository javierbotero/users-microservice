require 'rails_helper'

RSpec.describe User, type: :model do
  let(:expected_attributes) {
    {
      username: 'JavierDev',
      name: 'Javier Botero',
      birth: Date.new(1800, 5, 10),
      nationality: 'Colombian',
      gender: 'Male',
      email: 'j_botero0689@gmail.com',
      mobile: '7 345 6789'
    }
  }
  let(:user) { User.create(**expected_attributes) }
  context "check properties" do
    it { expect(user).to have_attributes(**expected_attributes) }
    it 'has many address' do
      t = User.reflect_on_association(:addresses)
      expect(t.macro).to eq(:has_many)
    end
  end
end
