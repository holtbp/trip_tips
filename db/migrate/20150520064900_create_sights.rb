class CreateSights < ActiveRecord::Migration
  def change
    create_table :sights do |t|
      t.belongs_to :city

      t.string  :name
      t.float   :latitude
      t.float   :longitude
      t.string  :address

      t.timestamps null: false
    end
  end
end
