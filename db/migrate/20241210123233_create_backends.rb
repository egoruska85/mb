class CreateBackends < ActiveRecord::Migration[7.0]
  def change
    create_table :backends do |t|
      t.string :phone1
      t.string :phone2
      t.string :phone3
      t.text :address
      t.string :email
      t.text :about_rus
      t.text :about_eng

      t.timestamps
    end
  end
end
