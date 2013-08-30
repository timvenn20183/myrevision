class CreateUseranswers < ActiveRecord::Migration
  def change
    create_table :useranswers do |t|
      t.integer :question_id
      t.string :answers
      t.integer :timespent
      t.integer :user_id
      t.integer :course_id
      t.timestamps
    end
    add_index :useranswers, :question_id
    add_index :useranswers, :user_id
    add_index :useranswers, :course_id
  end
end
