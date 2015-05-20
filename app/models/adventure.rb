class Adventure < ActiveRecord::Base

  belongs_to :getaway
  belongs_to :point_of_interest

  has_one :user, as: :promoter

end
