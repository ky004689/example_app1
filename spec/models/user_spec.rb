# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Example User", email: "user@example.com")
  end 

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
 
  it { should be_valid }
  describe "Nom non present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "Email non present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "Quand le nom est trop long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end
end
