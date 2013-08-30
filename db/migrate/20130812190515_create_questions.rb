class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title
      t.string :course_id

      t.timestamps
    end
    add_index :questions, :course_id
  end
end
