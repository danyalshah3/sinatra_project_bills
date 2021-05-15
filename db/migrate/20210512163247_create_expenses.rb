class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :description
      t.decimal :total_amount, precision: 8, scale: 2
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
