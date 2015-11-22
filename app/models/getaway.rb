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

  has_many :users
  has_many :stops

  # Total time on getaway; departure - arrival
  def duration
  end

end
