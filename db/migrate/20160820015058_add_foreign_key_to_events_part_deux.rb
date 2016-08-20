class AddForeignKeyToEventsPartDeux < ActiveRecord::Migration[5.0]
  def change
        add_column :events, :event_option_id, :integer
  end
end
