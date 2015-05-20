class CreateGetaways < ActiveRecord::Migration
  def change
    create_table :getaways do |t|
      t.belongs_to :user

      t.string  :name
      t.text    :description
      t.date    :arrival_date, null: true
      t.date    :departure_date, null: true

      t.timestamps null: false
    end
  end
end
