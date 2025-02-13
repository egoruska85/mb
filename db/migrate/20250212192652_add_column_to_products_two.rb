class AddColumnToProductsTwo < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :related_products, :string
  end
end
