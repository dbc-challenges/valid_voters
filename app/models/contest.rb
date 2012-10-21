class Contest < ActiveRecord::Base
  # belongs_to :ballot
  # has_many :candidates

  # validate :min_candidates

  # def election_on
  #   ballot.election_on
  # end

  # private

  # def min_candidates
  #   errors.add(:candidates, "A contest needs candidates") if candidates.empty?
  # end
end
