# create_table "adventures", force: :cascade do |t|
#   t.integer  "sight_id"
#   t.integer  "stop_id"
#   t.text     "description"
#   t.integer  "rating"
#   t.datetime "created_at",  null: false
#   t.datetime "updated_at",  null: false
# end

# add_index "adventures", ["stop_id"], name: "index_adventures_on_stop_id"

class Adventure < ActiveRecord::Base

  belongs_to :stop
  belongs_to :sight

  has_one :user, as: :promoter

end
