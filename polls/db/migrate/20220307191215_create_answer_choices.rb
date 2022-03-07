class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.string :answer_choice
      t.integer :question_id, null: false
      t.integer :user_id, null: false
    end
    add_index :answer_choices, :answer_choice
    add_index :answer_choices, :question_id
    add_index :answer_choices, :user_id
  end
end
