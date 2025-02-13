class LinksToCarousel < ActiveRecord::Migration[7.0]
  def change
    add_column :carousels, :link, :string
    add_column :carousels, :link_desc_rus, :string
    add_column :carousels, :link_desc_eng, :string
  end
end
