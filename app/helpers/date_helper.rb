module DateHelper

  # Total time (in hours) at stop; departure - arrival
  def duration(unit = :hours)
    return "?" if arrival.blank? || departure.blank?
    seconds = departure - arrival

    case unit
    when :hours
      return seconds / 60 / 60
    when :days
      return seconds / 60 / 60 / 24
    else
      raise InvalidTimeUnit, "Invalid time unit: #{unit}. Valid: [:hours, days]"
    end
  end

  # Display string of arrival and departure
  # Examples:
  #   ? (if no arrival or departure are set)
  #   Jun 7-11, 2016
  #   Jun 28-Jul 3, 2016
  #   Dec 28, 2015 - Jan 4, 2016
  #   Jun 11, 2016 - ? (if no departure is set)
  #   ? - Jun 11, 2016 (if no arrival is set)
  def duration_string
    return "?" if arrival.blank? && departure.blank?

    if departure.blank?
      return "#{arrival.strftime('%b %-d, %Y')} - ?"
    end

    if arrival.blank?
      return "? - #{departure.strftime('%b %-d, %Y')}"
    end

    if arrival.year != departure.year
      return "#{arrival.strftime('%b %-d, %Y')} - #{departure.strftime('%b %-d, %Y')}"
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

class InvalidTimeUnit < StandardError; end
