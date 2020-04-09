require 'rails_helper'

describe User, type: :model do

  describe "to be valid" do
    it "with email, unique username and password" do
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end
  end

  describe "not to be valid" do
    it "without unique username" do
      user = FactoryBot.create(:user)
      user_two = User.new(username: user.username,
                          password: 'password',
                          email: 'email@example.com')
      expect(user_two).not_to be_valid
    end
  end

end