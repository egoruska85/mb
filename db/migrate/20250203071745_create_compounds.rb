class CreateCompounds < ActiveRecord::Migration[7.0]
  def change
    create_table :compounds do |t|
      t.string :value_rus
      t.string :value_eng

      t.timestamps
    end
  end
end
