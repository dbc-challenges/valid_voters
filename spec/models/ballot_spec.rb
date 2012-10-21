require 'spec_helper'

describe Ballot do
  it "has at least one contest" do
    ballot = Ballot.new(:election_on => Date.parse("Tuesday, November 6, 2012"))
    ballot.should_not be_valid
    ballot.should have(1).errors_on(:contests)
  end

  pending "reports election results"
end
