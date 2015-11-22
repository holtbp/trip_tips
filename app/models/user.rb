# create_table "users", force: :cascade do |t|
#   t.string   "username",                           null: false
#   t.string   "email",                              null: false
#   t.string   "encrypted_password",                 null: false
#   t.string   "reset_password_token"
#   t.datetime "reset_password_sent_at"
#   t.datetime "remember_created_at"
#   t.integer  "sign_in_count",          default: 0, null: false
#   t.datetime "current_sign_in_at"
#   t.datetime "last_sign_in_at"
#   t.string   "current_sign_in_ip"
#   t.string   "last_sign_in_ip"
#   t.datetime "created_at",                         null: false
#   t.datetime "updated_at",                         null: false
# end

# add_index "users", ["email"], name: "index_users_on_email", unique: true
# add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
# add_index "users", ["username"], name: "index_users_on_username", unique: true

class User < ActiveRecord::Base
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  has_many :getaways
  has_many :adventures, as: :recommendations

end
