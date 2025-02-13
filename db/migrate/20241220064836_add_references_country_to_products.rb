class AddReferencesCountryToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :country, index: true
  end
end
