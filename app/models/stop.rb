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

  # TODO: Have this return the full language names
  def country
    return nil if city.blank?
    city.country
  end

  # Total time (in hours) at stop; departure - arrival
  def duration
    return "?" if arrival.blank? || departure.blank?
    (departure - arrival) / 60 / 60
  end

  # Display string of arrival and departure
  # Examples:
  #   ? (if no arrival or departure are set)
  #   Jun 7-11, 2016
  #   Jun 28-Jul 3, 2016
  #   Jun 11, 2016 - ? (if no departure is set)
  #   ? - Jun 11, 2016 (if no arrival is set)
  # Ex: Dec 28, 2015 - Jan 4, 2016
  def duration_string
    return "?" if arrival.blank? && departure.blank?

    if departure.blank?
      return "#{arrival.strftime('%b %-d, %Y')} - ?"
    end

    if arrival.blank?
      return "? - #{departure.strftime('%b %-d %Y')}"
    end

    if arrival.year != departure.year
      return "#{arrival.strftime('%b %-d, %Y')} - #{departure.strftime('%b %-d %Y')}"
    end

    if arrival.month == departure.month
      day_range = "#{arrival.day}-#{departure.day}"
      return "#{arrival.strftime('%b')} #{day_range}, #{arrival.year}"
    end

    arrival_string = arrival.strftime('%b %-d')
    departure_string = departure.strftime('%b %-d')

    "#{arrival_string} - #{departure_string}, #{arrival.year}"
  end
end
