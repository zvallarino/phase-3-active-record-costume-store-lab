class CreateCostumes < ActiveRecord::Migration
  def change
    create_table :costumes do |t|
      t.string :name
      t.string :size
      t.string :image_url
      t.float :price

      t.timestamps
    end
  end
end