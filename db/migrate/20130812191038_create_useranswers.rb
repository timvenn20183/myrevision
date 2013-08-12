class CreateUseranswers < ActiveRecord::Migration
  def change
    create_table :useranswers do |t|
      t.integer :question_id
      t.string :answers
      t.integer :timespent
      t.integer :user_id

      t.timestamps
    end
  end
end
