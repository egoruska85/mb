class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name_rus
      t.string :name_eng
      t.text :description_rus
      t.text :description_eng
      t.string :ozon
      t.string :wb
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
