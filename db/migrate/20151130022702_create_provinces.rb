class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name, null: false
      t.string :country_code, limit: 2
    end
  end
end
