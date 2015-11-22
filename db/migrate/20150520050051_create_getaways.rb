class CreateGetaways < ActiveRecord::Migration
  def change
    create_table :getaways do |t|
      t.belongs_to :user

      t.string    :name
      t.text      :description
      t.datetime  :arrival, null: true
      t.datetime  :departure, null: true

      t.timestamps null: false
    end
  end
end
