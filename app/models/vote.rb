class Vote < ActiveRecord::Base
  attr_accessible :contest, :candidate
end
