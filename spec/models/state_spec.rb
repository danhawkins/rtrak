require File.dirname(__FILE__) + '/../spec_helper'

describe State do
  it "should be valid" do
    State.new.should be_valid
  end
end
