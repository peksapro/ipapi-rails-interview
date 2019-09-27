class CreateGeos < ActiveRecord::Migration[6.0]
  def change
    create_table :geos do |t|
      t.string :ip, unique:true
      t.string :city, limit: 100
      t.string :country, limit: 100
      t.timestamps
    end
  end
end
