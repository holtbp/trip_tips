class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.belongs_to :getaway
      t.belongs_to :city
      t.datetime   :arrival, null: true
      t.datetime   :departure, null: true
    end
  end
end
