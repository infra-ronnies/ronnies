class AddEventPasswordToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :event_password, :string
  end
end
