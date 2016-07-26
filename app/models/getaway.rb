# create_table "getaways", force: :cascade do |t|
#   t.integer  "user_id"
#   t.string   "name"
#   t.text     "description"
#   t.datetime "arrival"
#   t.datetime "departure"
#   t.datetime "created_at",     null: false
#   t.datetime "updated_at",     null: false
# end

class Getaway < ActiveRecord::Base
  include DateHelper

  has_many :users
  has_many :stops

  # All cities that will be visited
  # Returns Array of City instances.
  def visiting_cities
    return [] if stops.blank?

    cities = []
    sights = stops.map(&:sights)

    if sights.present?
      cities = sights.flatten.map(&:city).uniq
    end

    cities
  end

  # All countries that will be visited
  # Returns Array of ISO3166::Country instances.
  def visiting_countries
    cities = visiting_cities
    return [] if cities.blank?

    cities.map(&:country).uniq(&:name)
  end
end
