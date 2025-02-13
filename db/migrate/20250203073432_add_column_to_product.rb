class AddColumnToProduct < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :season, index: true
    add_reference :products, :material, index: true
    add_reference :products, :compound, index: true
    add_reference :products, :collection, index: true
    add_reference :products, :style, index: true
    add_column :products, :lining, :boolean
    add_column :products, :clasp, :boolean
    add_column :products, :other_rus, :text
    add_column :products, :other_eng, :text
  end
end
