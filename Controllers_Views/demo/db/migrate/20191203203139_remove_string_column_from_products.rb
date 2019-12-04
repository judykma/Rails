class RemoveStringColumnFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :string
  end
end
