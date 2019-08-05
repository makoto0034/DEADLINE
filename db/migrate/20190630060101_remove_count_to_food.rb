class RemoveCountToFood < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods,:count,:integer
  end
end
