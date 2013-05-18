class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string  :title
      t.text    :description
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :trip_id
      t.timestamps
    end
  end
end
