require 'spec_helper'

describe User do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end
  it "has a valid email" do
    FactoryGirl.build(:user, email: "bademailaddress").should_not be_valid
  end

  it "has a unique email" do
    FactoryGirl.create(:user).should be_valid
    FactoryGirl.build(:user, name: "Peter Piper").should_not be_valid
  end
  # it "has an encrypted password" do
  #   user = User.new
  #   user.password_digest = "password"
  #   user.name = "Peter Jones"
  #   user.email = "peter@jones.com"
  #   user.save
  #   user = User.find(user.id)
  #   user.password_digest.should_not == "password"
  #   user.destroy

  # end
end

