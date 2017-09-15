class AddPictureStringToEvents < ActiveRecord::Migration
  def change
    add_column :events, :picture_name, :string
  end
end
