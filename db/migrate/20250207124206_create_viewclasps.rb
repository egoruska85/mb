class CreateViewclasps < ActiveRecord::Migration[7.0]
  def change
    create_table :viewclasps do |t|
      t.string :name_ru
      t.string :name_eng
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
