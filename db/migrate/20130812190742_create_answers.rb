class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.string :question_id
      t.integer :linked_to_answer_id
      t.boolean :correct_answer
      t.text :explain

      t.timestamps
    end
    add_index :answers, :question_id
  end
end
