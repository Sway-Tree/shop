class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :item
      t.text :description
      t.decimal :price, :precision => 2, :scale => 0
      t.references :category, index: true

      t.timestamps
    end
  end
end
