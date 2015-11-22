class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.belongs_to :province

      t.string :name, null: false
      t.string :local_name

      t.timestamps null: false
    end
  end
end
