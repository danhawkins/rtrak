require File.dirname(__FILE__) + '/../spec_helper'

describe Domain do
  it "should be valid" do
    Domain.new.should be_valid
  end
end
