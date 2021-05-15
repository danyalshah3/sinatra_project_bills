class User < ActiveRecord::Base
    has_many :expenses
    has_secure_password
    validates :username, uniqueness: true
end
