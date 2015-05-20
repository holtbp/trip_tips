class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.belongs_to :getaway, index: true

      t.text    :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
