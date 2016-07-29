class AddCompletedToAdventure < ActiveRecord::Migration
  def change
    add_column :adventures, :completed, :boolean, default: false
  end
end
