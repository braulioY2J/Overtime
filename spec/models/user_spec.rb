require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'user creation' do
    before do
      @user = User.create(email:'test@mail.com', password: '123456', 
        password_confirmation: '123456', first_name: 'braulio', last_name: 'segura') 
    end
    it 'can be created' do
      expect(@user).to be_valid
    end

    it 'can not be created with last and first name' do
        @user.first_name = nil
        @user.last_name = nil
        expect(@user).to_not be_valid
    end
  end

end
