class CreateArrivals < ActiveRecord::Migration[6.0]
  def change
    create_table :arrivals do |t|
      t.string :checkin
      t.string :checkout

      t.timestamps
    end
  end
end
