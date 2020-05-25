class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|

      t.integer :user_id

      t.string :question
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :choice4
      t.integer :answer
      t.string :explanation

      t.integer :your_answer


      t.timestamps
    end
  end
end
