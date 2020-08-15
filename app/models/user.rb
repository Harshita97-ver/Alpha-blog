class User < ApplicationRecord

    before_save { self.email = email.downcase}
    has_many :articles, dependent: :destroy
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
  

has_secure_password
end