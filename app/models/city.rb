# create_table "cities", force: :cascade do |t|
#   t.string   "name"
#   t.string   "province"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

class City < ActiveRecord::Base
  geocoded_by :display_name
  after_validation :geocode

  has_many :sights
  belongs_to :province

  def display_name
    "#{name}, #{province.name}, #{province.country.name}"
  end

  def country
    return nil if province.blank?
    province.country
  end

  def self.name_sorted
    self.all.sort_by do |city|
      [city.name, city.province.name, city.province.country.name].join(',')
    end
  end

  def coordinates
    [latitude, longitude]
  end

  # TODO: Build the UI to call this method with a value and possibly units.
  # Break this method out into a service at some point.
  def nearby_sights(kilometer_radius = 30)
    # Get sights that are nearby, but not necessarily in the city.
    # Ordered by distance, by default
    Sight.near(coordinates, kilometer_radius)
  end

end
