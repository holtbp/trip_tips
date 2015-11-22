class AddTypeToSight < ActiveRecord::Migration
  def change
    add_column :sights, :type, :string
  end
end
