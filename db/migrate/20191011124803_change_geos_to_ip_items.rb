class ChangeGeosToIpItems < ActiveRecord::Migration[6.0]
  def change
    rename_table :geos, :ip_items
  end
end
