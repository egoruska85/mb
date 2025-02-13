class CreateSitedetails < ActiveRecord::Migration[7.0]
  def change
    create_table :sitedetails do |t|

      t.timestamps
    end
  end
end
