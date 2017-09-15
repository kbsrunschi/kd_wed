class AddGiftsTable < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.text :description
      t.string :pic_name

      t.timestamps null: false
    end

    add_reference :gifts, :user, index: true
  end
end
