class Topic < ApplicationRecord

  validates :question,length: {in:1..100}
  validates :choice1,length: {in:1..10}
  validates :choice2,length: {in:1..10}
  validates :choice3,length: {in:1..10}
  validates :choice4,length: {in:1..10}
  validates :explanation,length: {in:1..100}
  validates :answer,presence: true


  belongs_to :user

  acts_as_taggable





  def self.search(search)
    if search
      Topic.where(["question LIKE ?","%#{search}%"])
    else
      Topic.all
    end  
  end  

    


end
