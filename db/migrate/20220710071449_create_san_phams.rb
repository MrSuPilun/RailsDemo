class CreateSanPhams < ActiveRecord::Migration[7.0]
  def change
    create_table :san_phams do |t|
      t.string :name
      t.string :imgUrl
      t.integer :price

      t.timestamps
    end
  end
end
