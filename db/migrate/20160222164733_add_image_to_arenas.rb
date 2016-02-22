class AddImageToArenas < ActiveRecord::Migration
  def change
    add_column :arenas, :image, :string
  end
end
