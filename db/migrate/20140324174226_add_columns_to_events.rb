class AddColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :date, :string
    add_column :events, :time, :string
  end
end
