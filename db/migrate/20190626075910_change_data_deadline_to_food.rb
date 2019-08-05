class ChangeDataDeadlineToFood < ActiveRecord::Migration[5.2]
  def change
    change_column :foods, :deadline, :integer
  end
end
