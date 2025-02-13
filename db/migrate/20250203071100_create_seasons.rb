class CreateSeasons < ActiveRecord::Migration[7.0]
  def change
    create_table :seasons do |t|
      t.string :name_rus
      t.string :name_eng

      t.timestamps
    end
  end
end
