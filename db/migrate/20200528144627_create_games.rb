class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|

      t.integer :one,default: 10
      t.integer :two,default: 20
      t.integer :three,default: 30
      t.integer :four,default: 40
      t.integer :five,default: 50
      
      
      
      
      t.timestamps
    end
  end
end
