require 'spec_helper'

describe Contest do
  it "uses its ballot to determine its election day" do
    election_day = DateTime.parse("Tuesday, November 6, 2012")

    contest = Contest.new
    contest.candidates.build(:name => "Fred Sunshine")
    Ballot.create!(:election_on => election_day, :contests => [contest])

    contest.election_on.should == election_day
  end

  it "has at least one candidate" do
    contest = Contest.new

    contest.should_not be_valid
    contest.should have(1).errors_on(:candidates)
  end

  pending "reports winner"
end
