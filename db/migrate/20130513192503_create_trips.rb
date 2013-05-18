class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :primary_url
      t.string :main_img

      t.timestamps
    end
  end
end
