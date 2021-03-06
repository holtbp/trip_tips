# create_table "sights", force: :cascade do |t|
#   t.integer  "city_id"
#   t.string   "name"
#   t.float    "latitude"
#   t.float    "longitude"
#   t.string   "address"
#   t.string   "type"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

class Sight < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  validates :type, inclusion: {
    in: %w(Museum Entertainment Landmark Food)
  }

  has_many :adventures
  belongs_to :city

  def coords
    "#{latitude},#{longitude}"
  end
end
