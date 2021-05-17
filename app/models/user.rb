class User < ActiveRecord::Base
    has_many :expenses
    has_secure_password
    validates :username, uniqueness: true
    validates :password, length: { in: 6..20 }
end
