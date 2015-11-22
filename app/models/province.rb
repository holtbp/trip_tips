# create_table "provinces", force: :cascade do |t|
#   t.string "country_code"
#   t.string  "name",       null: false
# end

class Province < ActiveRecord::Base
  has_many :cities

  def country
    ISO3166::Country.new(country_code)
  end
end
