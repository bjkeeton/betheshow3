class CreateEventOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :event_options do |t|
      t.string :name
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
