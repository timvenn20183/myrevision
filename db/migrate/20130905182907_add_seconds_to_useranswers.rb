class AddSecondsToUseranswers < ActiveRecord::Migration
  def change
    add_column :useranswers, :seconds, :integer, :default => 0
  end
end
