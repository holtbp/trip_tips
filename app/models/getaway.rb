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

  # Total time (in days); departure - arrival
  def duration
    return "?" if arrival.blank? || departure.blank?
    (departure - arrival) / 60 / 60 / 24
  end

end
