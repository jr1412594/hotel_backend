class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.float :price
      t.text :image
      t.text :description

      t.timestamps
    end
  end
end
