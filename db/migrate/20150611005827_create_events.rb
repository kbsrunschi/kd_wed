class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :date
      t.string :map_url
      t.string :contact_email
      t.string :contact_phone
      t.text :description

      t.timestamps null: false
    end
  end
end
