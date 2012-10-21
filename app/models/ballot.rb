class Ballot < ActiveRecord::Base
  attr_accessible :election_on, :contests

  # has_many :contests

  # validate :minimum_contests

  # private

  # def minimum_contests
  #   errors.add(:contests, "must exist") if contests.empty?
  # end
end
