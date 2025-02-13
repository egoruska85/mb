class CreateProductcomments < ActiveRecord::Migration[7.0]
  def change
    create_table :productcomments do |t|
      t.string :message
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
