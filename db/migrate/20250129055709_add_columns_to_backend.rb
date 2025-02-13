class AddColumnsToBackend < ActiveRecord::Migration[7.0]
  def change
    add_column :backends, :instagram, :string
    add_column :backends, :vk, :string
    add_column :backends, :telegram, :string
    add_column :backends, :whatsapp, :string
  end
end
