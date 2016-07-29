class AddPublicToGetaways < ActiveRecord::Migration
  def change
    add_column :getaways, :is_public, :boolean, default: false
  end
end
