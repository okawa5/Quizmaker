class ChangeAnswerOfUser < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :all_answer, from: nil, to: 0
    change_column_default :users, :correct_answer, from: nil, to: 0  
  end

end
