require File.dirname(__FILE__) + '/../spec_helper'

describe TicketType do
  it "should be valid" do
    TicketType.new.should be_valid
  end
end
