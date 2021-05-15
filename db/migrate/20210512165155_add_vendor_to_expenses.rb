class AddVendorToExpenses < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :vendor, :string
  end
end
