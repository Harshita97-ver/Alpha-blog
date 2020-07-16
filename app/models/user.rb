class User < ApplicationRecord

    has_many :articles
    validates :username, 
                        presence: true,
                        uniqueness: {case_sensitive: false}, 
                        length: {minimum: 3}
      
     validates :username,
                         uniqueness:{ case_sensitive: false },
                         length: {maximum: 25}
  

    validates :email,
                         presence: true, 
                         uniqueness: { case_sensitive: false },
                         length: { in: 6..150 },
                         format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Not proper email"}
  


end