require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

  it "should be a Valid User" do
    @user= User.create(
      email: 'anisa@mohamed.com',
      name: 'Anisa Mohamed',
      password: "RedMartini",
      password_confirmation: "RedMartini"
          )

    expect(@user).to be_valid
  end


  it "should have an email" do
    @user= User.create(
      email: nil,
      name: 'Anisa Mohamed',
      password: "RedMartini",
      password_confirmation: "RedMartini"
          )
    expect(@user).to_not be_valid
  end

  it "should have a Valid Name" do
    @user= User.create(
      email: 'anisa@mohamed.com',
      name: nil,
      password: "RedMartini",
      password_confirmation: "RedMartini"
          )
          # first_name=@user.name.split

    expect(@user).to_not be_valid
  end

  # it "should have a Valid Last Name" do
  #   @user= User.create(
  #     email: 'anisa@mohamed.com',
  #     name: 'Anisa Mohamed',

  #     password: "RedMartini"
  #         )
  #   expect(@user.name).to_not be_valid
  # end


 

  it "should have an password with minimum length" do

    @user= User.create(
      email: 'anisa@moHamed.Com',
      name: 'Anisa Mohamed',
      password: "Red",
      password_confirmation: "Red"
          )
    expect(@user).to_not be_valid
  end


  it "should be a valid email" do
    @user1= User.create(
      email: 'anisa@moHamed.Com',
      name: 'Anisa Mohamed',
      password: "RedMartini",
      password_confirmation: "RedMartini"
          )
    @user= User.create(
      email: 'anisa@moHamed.Com',
      name: 'Anisa Mohamed',
      password: "RedMartini",
      password_confirmation: "RedMartini"
          )
    expect(@user).to_not be_valid

  end


  it "should have a valid password " do
    @user= User.create(
      email: 'anisa@mohamed.com',
      name: 'Anisa Mohamed',
      password: "R",
      password_confirmation: "R"
    
          )
    expect(@user).to_not be_valid
  end

  

end
end
