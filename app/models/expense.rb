class Expense < ActiveRecord::Base
    belongs_to :user
    validates :date, :total_amount, :vendor, presence: :true
    validates :user_id, presence: :true
end
