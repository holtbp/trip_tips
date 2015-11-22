class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.belongs_to :sight, index: true
      t.belongs_to :stop, index: true

      t.text    :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
