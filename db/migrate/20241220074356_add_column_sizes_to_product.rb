class AddColumnSizesToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :sizes, :string
  end
end
