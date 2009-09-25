require File.dirname(__FILE__) + '/../spec_helper'

describe Stage do
  it "should be valid" do
    Stage.new.should be_valid
  end
end
