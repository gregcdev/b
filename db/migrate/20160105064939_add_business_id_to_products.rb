class AddBusinessIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :business_id, :integer
    add_index :products, :business_id
  end
end
