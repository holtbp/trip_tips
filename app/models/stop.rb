# create_table :stops do |t|
#   t.belongs_to :getaway
#   t.belongs_to :city
#   t.datetime :arrival
#   t.datetime :departure
# end

class Stop < ActiveRecord::Base
  include DateHelper

  belongs_to :city
  belongs_to :getaway

  has_many :adventures

  def name
    city.name
  end

  # TODO: Have this return the full language names
  def country
    return nil if city.blank?
    city.country
  end

  def sights
    return [] if adventures.blank?
    adventures.map(&:sight)
  end
end
