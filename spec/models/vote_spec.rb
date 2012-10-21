require 'spec_helper'

describe Vote do
  let(:jimbo)    { Candidate.new(:name => "Jimbo Tremble") }
  let(:margaret) { Candidate.new(:name => "Margaret Washington") }

  it "limits candidate choices to those in the contest" do
    contest = Contest.new
    contest.candidates << [jimbo, margaret]

    voter = Voter.new(:ssn => "321-43-8883")

    shadi = Candidate.new(:name => "Ed Shadi")
    vote = voter.votes.build(:contest => contest, :candidate => shadi)

    vote.should_not be_valid
    vote.should have(1).errors_on(:candidate)
  end

  it "succeeds when given a contest and valid candidate" do
    contest = Contest.new
    contest.candidates << [jimbo, margaret]

    voter = Voter.new(:ssn => "321-43-8883")

    vote = voter.votes.build(:contest => contest, :candidate => margaret)

    vote.should be_valid
  end
end
