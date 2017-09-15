class ChangeAttendingToDefaultToNil < ActiveRecord::Migration
  def change
    change_column :users, :attending, :boolean, null: false, default: false
  end
end
