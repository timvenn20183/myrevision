class AddAnswerToUseranswers < ActiveRecord::Migration
  def change
    add_column :useranswers, :answer_id, :integer
    add_index :useranswers, :answer_id
  end
end
