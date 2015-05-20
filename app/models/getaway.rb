class Getaway < ActiveRecord::Base

  has_many :users
  has_many :adventures

end
