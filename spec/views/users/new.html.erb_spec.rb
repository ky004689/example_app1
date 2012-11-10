require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User).as_new_record)
  end
end
