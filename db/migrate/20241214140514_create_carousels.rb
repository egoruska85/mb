class CreateCarousels < ActiveRecord::Migration[7.0]
  def change
    create_table :carousels do |t|
      t.string :category_rus
      t.string :category_eng
      t.string :title_rus
      t.string :title_eng
      t.text :body_rus
      t.text :body_eng
      t.boolean :details
      t.string :details_sizes
      t.text :details_colors
      t.text :details_more
      t.string :details_buy_ozon
      t.string :details_buy_wb

      t.timestamps
    end
  end
end
