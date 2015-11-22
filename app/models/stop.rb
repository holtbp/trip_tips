# create_table :stops do |t|
#   t.belongs_to :getaway
#   t.belongs_to :city
#   t.datetime :arrival
#   t.datetime :departure
# end

class Stop < ActiveRecord::Base
  belongs_to :city
  belongs_to :getaway

  has_many :adventures

  def name
    city.name
  end

  # Total time at stop; departure - arrival
  def duration
  end
end
