class User < ApplicationRecord

    validates :username, 
                        presence: true,
                        uniqueness: {case_sensitive: false}, 
                        length: {minimum: 3}
    validates :username,
                         uniqueness:{ case_sensitive: false },
                         length: {maximum: 25}
    validates :email, 
                        presence: true,
                        uniqueness:{ case_sensitive: false }, 
                        length: {minimum: 105}
end