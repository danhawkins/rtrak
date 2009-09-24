require File.dirname(__FILE__) + '/../spec_helper'

describe Dashboard do
  it "should be valid" do
    Dashboard.new.should be_valid
  end
end
