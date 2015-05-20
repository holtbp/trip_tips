class Sight < ActiveRecord::Base

  has_many :adventures
  belongs_to :city

end
