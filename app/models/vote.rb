class Vote < ActiveRecord::Base
  attr_accessible :contest, :candidate

  # belongs_to :voter
  # belongs_to :contest
  # belongs_to :candidate

  # validate :valid_candidate

  # def valid_candidate
  #   errors.add(:candidate) unless contest.candidates.include?(candidate)
  # end
end
