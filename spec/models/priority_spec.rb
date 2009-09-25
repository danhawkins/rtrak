require File.dirname(__FILE__) + '/../spec_helper'

describe Priority do
  it "should be valid" do
    Priority.new.should be_valid
  end
end
