class CreateArenas < ActiveRecord::Migration
  def change
    create_table :arenas do |t|
      t.string :name
      t.string :address
      t.string :number
      t.text :description
      t.integer :size
      t.decimal :price

      t.timestamps null: false
    end
  end
end
