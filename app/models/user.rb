class User < ApplicationRecord

    validates :name, length: {in:1..10}

    has_secure_password

    has_many :topics


end
