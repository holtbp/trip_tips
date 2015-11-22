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

class Landmark < Sight

end
